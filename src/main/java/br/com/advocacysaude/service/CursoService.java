package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import br.com.advocacysaude.model.Curso;
import br.com.advocacysaude.model.Usuario;
import br.com.advocacysaude.repository.CursoRepository;
import br.com.advocacysaude.utility.FileUpload;

@Service
public class CursoService {

	@Autowired
	private CursoRepository repository;

	public Curso save(Curso curso, Usuario usuario, HttpServletRequest request) {
		curso.setUsuario(usuario);
		
		//Upload Banner
		String [] extensaoBanner = curso.getBanner().getArquivo().getOriginalFilename().split("\\.");
		curso.getBanner().setExtensao(extensaoBanner[extensaoBanner.length - 1]);
		curso.getBanner().setCaminho(upload(request, 
				curso.getBanner().getArquivo(), 
				"banner." + curso.getBanner().getExtensao(), 
				"documentos/cursos/" + curso.getTitulo()));
		
		//Upload Vídeo
		String [] extensaoVideo = curso.getVideo().getArquivo().getOriginalFilename().split("\\.");
		curso.getVideo().setExtensao(extensaoVideo[extensaoVideo.length - 1]);
		curso.getVideo().setCaminho(upload(request, 
						curso.getVideo().getArquivo(), 
						"video." + curso.getVideo().getArquivo().getOriginalFilename().split("\\.")[1], 
						"documentos/cursos/" + curso.getTitulo()));
		
		return repository.save(curso);
	}

	public Optional<Curso> findById(Long id) {
		return repository.findById(id);
	}

	public List<Curso> findAll() {
		return repository.findAll();
	}

	// Serviço que faz o upload de arquivos para o servidor
	public String upload(HttpServletRequest request, MultipartFile arquivo, String nomeArquivo, String url) {
		return FileUpload.upload(request, arquivo, nomeArquivo, url);
	}

}
