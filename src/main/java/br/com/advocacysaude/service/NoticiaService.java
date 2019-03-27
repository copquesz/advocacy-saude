package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import br.com.advocacysaude.model.Noticia;
import br.com.advocacysaude.model.Usuario;
import br.com.advocacysaude.repository.NoticiaRepository;
import br.com.advocacysaude.utility.FileUpload;

@Service
public class NoticiaService {

	@Autowired
	private NoticiaRepository repository;

	public Noticia save(Noticia noticia, Usuario usuario, HttpServletRequest request) {

		noticia.setUsuario(usuario);

		if (noticia.getReferencia().equals("http://")) {
			noticia.setReferencia(null);
		}

		// Upload Banner
		String[] extensaoBanner = noticia.getBanner().getArquivo().getOriginalFilename().split("\\.");
		noticia.getBanner().setExtensao(extensaoBanner[extensaoBanner.length - 1]);
		noticia.getBanner().setCaminho(
				upload(
						request, noticia.getBanner().getArquivo(),
						"banner." + noticia.getBanner().getExtensao(), 
						"documentos/noticias/" + noticia.getTitulo()));

		return repository.save(noticia);
	}

	public Optional<Noticia> findById(Long id) {
		return repository.findById(id);
	}

	public List<Noticia> findAll() {
		return repository.findAll();
	}

	// Serviço que faz o upload de arquivos para o servidor
	public String upload(HttpServletRequest request, MultipartFile arquivo, String nomeArquivo, String url) {
		return FileUpload.upload(request, arquivo, nomeArquivo, url);
	}

}
