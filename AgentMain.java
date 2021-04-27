package com.java.mphasis.Ag;

import java.util.List;
import java.util.Scanner;

public class AgentMain
{
	static Scanner sc = new Scanner(System.in);
	
	public static void main(String[] args) 
	{
		int ch;
		do
		{
			System.out.println("1. Add Agent..");
			System.out.println("2. Show Agent..");
			System.out.println("3. Exit");
			System.out.println("Enter your Choice..");
			ch = sc.nextInt();
			
			switch(ch)
			{
			case 1 : addAgent();
					 break;
			case 2 : showAgent();
					 break;
			default: System.out.println("Inalid input");
			}
		}while(ch!=3);
	}
	public static void addAgent()
	{
		Agent ag = new Agent();
		
		System.out.println("Enter AgentID");
		ag.setAgentID(sc.nextInt());
		
		System.out.println("Enter Agent Name");
		ag.setName(sc.next());
		
		System.out.println("Enter Agent City");
		ag.setCity(sc.next());
		
		System.out.println("Enter Agent Premium");
		ag.setPremium(sc.nextDouble());
		
		System.out.println("Enter Agent Payment Mode");
		ag.setPayMode(sc.nextInt());
		
		
		String result = AgentBAL.addAgentBAL(ag);
		System.out.println(result);
	}
	public static void showAgent()
	{
		List<Agent> agentList = AgentBAL.showAgentBAL();
		
		for (Agent agent : agentList) 
		{
			System.out.println(agent);
		}
	}
}
