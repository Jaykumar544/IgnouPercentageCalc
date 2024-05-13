package com.ignou.controller;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController
{

    @RequestMapping({"/","/index"})
    public ModelAndView index()
    {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @RequestMapping("/gradeCard")
    public ModelAndView gradeCard(@RequestParam String enrollNo, @RequestParam String course, HttpServletRequest request, HttpServletResponse response)
    {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/gradeCard");
//        HttpSession session = request.getSession();

        try {
            List<Double> marks=new ArrayList<>();
            double totalMarks=0;
            double percentage=0;

            String url = "https://gradecard.ignou.ac.in/gradecard/view_gradecard.aspx?eno="+enrollNo+"&prog=BCA&type=1";
            Document doc = Jsoup.connect(url).get();


            // extracting personal details (name, enrollment No, course)

            Element spanElement = doc.getElementById("ctl00_ContentPlaceHolder1_lblDispEnrolno");
            if (spanElement != null)
                modelAndView.addObject("enrollmentNo", spanElement.text());

            spanElement = doc.getElementById("ctl00_ContentPlaceHolder1_lblDispname");
            if (spanElement != null)
                modelAndView.addObject("studentName",spanElement.text());

            spanElement = doc.getElementById("ctl00_ContentPlaceHolder1_lblDispProgCode");
            if (spanElement != null)
                modelAndView.addObject("courseName",spanElement.text());



            // Select the table by its ID
            Element table = doc.getElementById("ctl00_ContentPlaceHolder1_gvDetail");

            if(table==null)
            {
                ModelAndView modelAndView1 = index();
                modelAndView1.addObject("errorMsg","Error, either enrollment no not found or other issue.");
                return modelAndView1;
            }

            // Pass the table to the JSP page
            modelAndView.addObject("table", table.toString());


            // Select the table rows except the header row
            Elements rows = table.select("tr:gt(0)");

            for (Element row : rows) {
                Elements columns = row.select("td");
                String subjectNo = columns.get(0).text();
                String assignmentMarks = columns.get(1).text();
                String examMarks;
                if(subjectNo.contains("L"))
                    examMarks=columns.get(7).text();
                else
                    examMarks=columns.get(6).text();


                if(!assignmentMarks.equals("-") && !examMarks.equals("-") && !assignmentMarks.isEmpty() && !examMarks.isEmpty())
                {
                    if(Double.parseDouble(assignmentMarks)>35 && Double.parseDouble(examMarks)>35)
                        marks.add(calculatingPerSubject(subjectNo, assignmentMarks,examMarks));
                }
            }

            for(Double d:marks)
            {
                totalMarks+=d;
            }
            percentage=totalMarks/marks.size();
            modelAndView.addObject("percentage",percentage);

        }
        catch (Exception e) {
            e.printStackTrace();
        }

        return modelAndView;
    }

    public Double calculatingPerSubject(String subjectNo, String assignmentMarks, String examMarks)
    {
        double assMarks = Float.parseFloat(assignmentMarks);
        double exMarks = Float.parseFloat(examMarks);
        if(subjectNo.equals("ECO01") || subjectNo.equals("ECO02") || subjectNo.equals("FEG02"))
            return (Double) (assMarks*0.3+exMarks*0.7);
        else
            return (Double) (assMarks*0.25+exMarks*0.75);
    }
}