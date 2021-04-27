package com.java.mphasis.Ag;



public class Agent 
{
	private int agentID;
	private String name;
	private String city;
	private double premium;
	private int payMode;
	
	public int getAgentID() {
		return agentID;
	}
	public void setAgentID(int agentID) {
		this.agentID = agentID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public double getPremium() {
		return premium;
	}
	public void setPremium(double premium) {
		this.premium = premium;
	}
	public int getPayMode() {
		return payMode;
	}
	public void setPayMode(int payMode) {
		this.payMode = payMode;
	}
	public Agent() {
	}
	public Agent(int agentID, String name, String city, double premium, int payMode) {
		this.agentID = agentID;
		this.name = name;
		this.city = city;
		this.premium = premium;
		this.payMode = payMode;
	}
	@Override
	public String toString() {
		String pm = "";
		if(payMode == 1)
		{
			pm = "Yearly";
		}
		if(payMode==2)
		{
			pm="Half-Yearly";
		}
		if(payMode==3)
		{
			pm="Quarterly";
		}
		
		return "Agent [agentID=" + agentID + ", name=" + name + ", city=" + city + ", premium=" + premium + ", payMode="
				+ pm + "]";
	}
	
	
}