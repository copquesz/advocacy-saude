package br.com.advocacysaude.intercepctor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class AutorizadorInterceptor extends HandlerInterceptorAdapter {

	/**
	 * Método que realiza o papel do filter.
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object controller)
			throws Exception {

		// Recebe a URI que esta sendo acessada
		final String uri = request.getRequestURI();

		// Verifica se a URI termina com uma das opções abaixo
		if (!uri.contains("/painel")) {
			return true;
		}

		// Verifica se a URI possui alguma extensão das aceitas
		else if (uri.contains("css") || uri.contains("js") || uri.contains("png") || uri.contains("jpg")
				|| uri.contains("jpeg") || uri.contains("pdf") || uri.contains("bmp")) {
			return true;
		}

		// Verifica se possui um usuário válido na sessão.
		else if (request.getSession().getAttribute("usuario") != null) {
			return true;
		}

		// Caso não entre em nenhuma situação acima, direciona para a página de sessão
		// expirada ou inválida.
		else {
			request.getSession().setAttribute("uri", uri);
			response.sendRedirect(request.getContextPath() + "/login");
			return false;
		}
	}

}
