package net.member.action;

public class ActionForward {
	private boolean isRedirect = false;
	private String path = null;
	// url

	private String url = null;

	public boolean isRedirect() {
		return isRedirect;
	}

	public String getPath() {
		return path;
	}

	// url getter
	public String getUrl() {
		return url;
	}

	public void setRedirect(boolean b) {
		isRedirect = b;
	}

	public void setPath(String string) {
		path = string;
	}

	// url setter
	public void setUrl(String urlstring) {
		url = urlstring;
	}

}
