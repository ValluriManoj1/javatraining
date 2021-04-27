package com.java.mphasis.Ag;

import java.util.ArrayList;
import java.util.List;

public class AgentDAO 
{
	static List<Agent> agentList;
	
	static
	{
		agentList = new ArrayList<Agent>();
	}
	
	public String addAgentDAO(Agent agent)
	{
		agentList.add(agent);
		return "Agent added successfully..\n";
	}
	
	public List<Agent> showAgentDAO()
	{
		return agentList;
	}
}
