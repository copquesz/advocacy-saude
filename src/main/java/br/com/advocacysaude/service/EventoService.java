package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import br.com.advocacysaude.model.Evento;
import br.com.advocacysaude.model.Usuario;
import br.com.advocacysaude.repository.EventoRepository;
import br.com.advocacysaude.utility.FileUpload;

@Service
public class EventoService {

	@Autowired
	private EventoRepository repository;

	public Evento save(Evento evento, Usuario usuario, HttpServletRequest request) {
		evento.setUsuario(usuario);
		
		evento.getBanner().setExtensao(evento.getBanner().getArquivo().getOriginalFilename().split("\\.")[1]);
		evento.getBanner().setCaminho(
				upload(request, 
						evento.getBanner().getArquivo(), 
						"banner." + evento.getBanner().getExtensao(), 
						"documentos/eventos/" + evento.getTitulo()));
		
		return repository.save(evento);
	}

	public Optional<Evento> findById(Long id) {
		return repository.findById(id);
	}

	public List<Evento> findAll() {
		return repository.findAll();
	}

	// Serviço que faz o upload de arquivos para o servidor
	public String upload(HttpServletRequest request, MultipartFile arquivo, String nomeArquivo, String url) {
		return FileUpload.upload(request, arquivo, nomeArquivo, url);
	}

}
