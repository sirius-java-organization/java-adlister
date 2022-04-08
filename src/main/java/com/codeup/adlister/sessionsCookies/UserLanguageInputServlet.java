package com.codeup.adlister.sessionsCookies;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/input-language")
public class UserLanguageInputServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String dataTest = request.getParameter("language-pref");

//        System.out.println("dataTest = " + dataTest); //Proof is in the pudding - we got data! Now, let's do something with that data [what we have here is the user's inputted string from the form indicating a language pref]

        //It would be pretty cool.. if I could take that and store it for our user to not have to mess with again. Maybe sessions can help?

        //Go get the session object - store it in an object

        HttpSession currentSession = request.getSession();
        currentSession.setAttribute("language", dataTest);

        //Now it's up here waiting to rock and roll in our session object
        System.out.println("currentSession.getAttribute(\"language\") = " + currentSession.getAttribute("language"));

    }
}
