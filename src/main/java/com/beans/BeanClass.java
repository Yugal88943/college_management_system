package com.beans;

public class BeanClass
{

	private String username;
	private String userType;
	private String password;
	
	public String getUsername() {
		System.out.println("get user called");
		return username;
	}
	public void setUsername(String username) {
		System.out.println("Bean Class user :"+username);
		this.username = username;
	}
	public String getUserType() 
	{
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
		
	/* ***************************/
	private String event_date;
	private String news;
	
	public String getEvent_date() {
		return event_date;
	}
	public void setEvent_date(String event_date) {
		this.event_date = event_date;
	}
	public String getNews() {
		return news;
	}
	public void setNews(String news) {
		this.news = news;
	}
	
	/* ********************** */
	
	private String city;
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}

	/* ************************ */
	
	private String firstname;
	private String lastname;
	private Integer batch;
	private String course;
	private Long reg_no;
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public Integer getBatch() {
		return batch;
	}
	public void setBatch(Integer batch) {
		this.batch = batch;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	
	public Long getReg_no() {
		return reg_no;
	}
	public void setReg_no(Long reg_no) {
		this.reg_no = reg_no;
	}
	
	/* ********************** */
	
	
	private String fname;
	private String lname;
	private String gender;
	private String qualification;
	private Float marks;
	private String father_name;
	private String dob;
	
	public String getFather_name() {
		return father_name;
	}
	public void setFather_name(String father_name) {
		this.father_name = father_name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public Float getMarks() {
		return marks;
	}
	public void setMarks(Float marks) {
		this.marks = marks;
	}
	
	/* *********************** */
	
	private String contact;
	private String mailid;
	
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getMailid() {
		return mailid;
	}
	public void setMailid(String mailid) {
		this.mailid = mailid;
	}
	
	/* ************************** */
	
	private String oldpwd;
	private String newpwd;
	
	public String getOldpwd() {
		return oldpwd;
	}
	public void setOldpwd(String oldpwd) {
		this.oldpwd = oldpwd;
	}
	public String getNewpwd() {
		return newpwd;
	}
	public void setNewpwd(String newpwd) {
		this.newpwd = newpwd;
	}
	
	/* *************************** */
	
	private String question;
	private String answer;
	
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	/* ************************ */
	
	private int rollno;
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
	
	private String wname;
	private int troom;
	private String sname;
	private int roomno;
	private String floor;
	private String phno;
	private String address;
	
	public String getWname() {
		return wname;
	}
	public void setWname(String wname) {
		this.wname = wname;
	}
	
	public int getTroom() {
		return troom;
	}
	public void setTroom(int troom) {
		this.troom = troom;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public int getRoomno() {
		return roomno;
	}
	public void setRoomno(int roomno) {
		this.roomno = roomno;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	private float fees;
	private float admfees;
	private float balance;
	
	
	public float getFees() {
		return fees;
	}
	public void setFees(float fees) {
		this.fees = fees;
	}
	public float getAdmfees() {
		return admfees;
	}
	public void setAdmfees(float admfees) {
		this.admfees = admfees;
	}
	
	public float getBalance() {
		return balance;
	}
	public void setBalance(float balance) {
		this.balance = balance;
	}

	/* ********************** */
	

	private String sub_name;
	private String sub_code;
	private String paper_id;
	private int sem;
	private int max_mrks;
	private int min_mrks;

	public String getSub_name() {
		return sub_name;
	}
	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}
	public String getSub_code() {
		return sub_code;
	}
	public void setSub_code(String sub_code) {
		this.sub_code = sub_code;
	}
	public String getPaper_id() {
		return paper_id;
	}
	public void setPaper_id(String paper_id) {
		this.paper_id = paper_id;
	}
	public int getSem() {
		return sem;
	}
	public void setSem(int sem) {
		this.sem = sem;
	}
	public int getMax_mrks() {
		return max_mrks;
	}
	public void setMax_mrks(int max_mrks) {
		this.max_mrks = max_mrks;
	}
	public int getMin_mrks() {
		return min_mrks;
	}
	public void setMin_mrks(int min_mrks) {
		this.min_mrks = min_mrks;
	}
	
	/* ************************* */
	
	private String exam_ques;
	private String ans1;
	private String ans2;
	private String ans3;
	private String ans4;
	private String right_ans;
	
	private Long ques_no;
	private Integer total_ques;
	private float result_percentage;


	public String getExam_ques() {
		return exam_ques;
	}
	public void setExam_ques(String exam_ques) {
		this.exam_ques = exam_ques;
	}
	public String getAns1() {
		return ans1;
	}
	public void setAns1(String ans1) {
		this.ans1 = ans1;
	}
	public String getAns2() {
		return ans2;
	}
	public void setAns2(String ans2) {
		this.ans2 = ans2;
	}
	public String getAns3() {
		return ans3;
	}
	public void setAns3(String ans3) {
		this.ans3 = ans3;
	}
	public String getAns4() {
		return ans4;
	}
	public void setAns4(String ans4) {
		this.ans4 = ans4;
	}
	public String getRight_ans() {
		return right_ans;
	}
	public void setRight_ans(String right_ans) {
		this.right_ans = right_ans;
	}
	
	public Long getQues_no() {
		return ques_no;
	}
	public void setQues_no(Long ques_no) {
		this.ques_no = ques_no;
	}
	public Integer getTotal_ques() {
		return total_ques;
	}
	public void setTotal_ques(Integer total_ques) {
		this.total_ques = total_ques;
	}
	public float getResult_percentage() {
		return result_percentage;
	}
	public void setResult_percentage(float result_percentage) {
		this.result_percentage = result_percentage;
	}

	/* *********************** */
	
	private String book;
	private String author;
	private String path;

	public String getBook() {
		return book;
	}
	public void setBook(String book) {
		this.book = book;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
}
