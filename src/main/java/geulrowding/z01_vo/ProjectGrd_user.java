package geulrowding.z01_vo;

public class ProjectGrd_user {
	private Project project;
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}
	public Grd_user getGrd_user() {
		return grd_user;
	}
	public void setGrd_user(Grd_user grd_user) {
		this.grd_user = grd_user;
	}
	public ProjectGrd_user(Project project, Grd_user grd_user) {
		super();
		this.project = project;
		this.grd_user = grd_user;
	}
	public ProjectGrd_user() {
		super();
		// TODO Auto-generated constructor stub
	}
	private Grd_user grd_user;
}
