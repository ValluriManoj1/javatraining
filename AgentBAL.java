package com.java.mphasis.Ag;

import java.util.List;

public class AgentBAL 
{
	public static String addAgentBAL(Agent agent) 
	{
		return new AgentDAO().addAgentDAO(agent);
	}
	
	public static List<Agent> showAgentBAL() 
	{
		return new AgentDAO().showAgentDAO();
	}
}