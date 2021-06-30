package evaluation;

public class EvaluationDTO {
	
	private int evaluationID;
	private String userID;
	private String courseName;
	private String professorName;
	private int courseYear;
	private String semesterDivide;
	private String courseDivide;
	private String evaluationTitle;
	private String evaluationContent;
	private String totalScore;
	private String creditScore;
	private String comfortableScore;
	private String courseScore;
	private int likeCount;
	
	public int getEvaluationID() {
		return evaluationID;
	}
	public void setEvaluationID(int evaluationID) {
		this.evaluationID = evaluationID;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getProfessorName() {
		return professorName;
	}
	public void setProfessorName(String professorName) {
		this.professorName = professorName;
	}
	public int getCourseYear() {
		return courseYear;
	}
	public void setCourseYear(int courseYear) {
		this.courseYear = courseYear;
	}
	public String getSemesterDivide() {
		return semesterDivide;
	}
	public void setSemesterDivide(String semesterDivide) {
		this.semesterDivide = semesterDivide;
	}
	public String getCourseDivide() {
		return courseDivide;
	}
	public void setCourseDivide(String courseDivide) {
		this.courseDivide = courseDivide;
	}
	public String getEvaluationTitle() {
		return evaluationTitle;
	}
	public void setEvaluationTitle(String evaluationTitle) {
		this.evaluationTitle = evaluationTitle;
	}
	public String getEvaluationContent() {
		return evaluationContent;
	}
	public void setEvaluationContent(String evaluationContent) {
		this.evaluationContent = evaluationContent;
	}
	public String getTotalScore() {
		return totalScore;
	}
	public void setTotalScore(String totalScore) {
		this.totalScore = totalScore;
	}
	public String getCreditScore() {
		return creditScore;
	}
	public void setCreditScore(String creditScore) {
		this.creditScore = creditScore;
	}
	public String getComfortableScore() {
		return comfortableScore;
	}
	public void setComfortableScore(String comfortableScore) {
		this.comfortableScore = comfortableScore;
	}
	public String getCourseScore() {
		return courseScore;
	}
	public void setCourseScore(String courseScore) {
		this.courseScore = courseScore;
	}
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	public EvaluationDTO() {
	}
	public EvaluationDTO(int evaluationID, String userID, String courseName, String professorName, int courseYear,
			String semesterDivide, String courseDivide, String evaluationTitle, String evaluationContent,
			String totalScore, String creditScore, String comfortableScore, String courseScore, int likeCount) {
		super();
		this.evaluationID = evaluationID;
		this.userID = userID;
		this.courseName = courseName;
		this.professorName = professorName;
		this.courseYear = courseYear;
		this.semesterDivide = semesterDivide;
		this.courseDivide = courseDivide;
		this.evaluationTitle = evaluationTitle;
		this.evaluationContent = evaluationContent;
		this.totalScore = totalScore;
		this.creditScore = creditScore;
		this.comfortableScore = comfortableScore;
		this.courseScore = courseScore;
		this.likeCount = likeCount;
	}
	
	
	
}
