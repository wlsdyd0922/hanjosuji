package job.manager;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BoardSqlCreater {
	private Logger log = LoggerFactory.getLogger(getClass());
	public String sqlCreate(String company, String location, String industry, String type, String career,
			String empltype, String level_of_education) {
		

		String sql = "select b.no,b.title,b.career,b.empltype,b.company,b.department,b.edu,b.location,a.name, a.industry, a.employee, a.type from company a inner join hireboard b on a.name=b.company";

		boolean compF = company != null && !company.equals("");
		boolean locF = location != null && !location.equals("");
		boolean industryF = industry != null && !industry.equals("");
		boolean typeF = type != null && !type.equals("");
		boolean careerF = career != null && !career.equals("");
		boolean empltypeF = empltype != null && !empltype.equals("");
		boolean eduF = level_of_education != null && !level_of_education.equals("");

		if (compF || locF || industryF || typeF || careerF || empltypeF || eduF) {
			sql = sql + " where";
			if (compF) {
				sql = sql + " b.title like '%'||?||'%'";
				if (locF || industryF || typeF || careerF || empltypeF || eduF) {
					sql = sql + " and";
				}
			}

			if (locF) {
				sql = sql + " b.location = ?";
				if (industryF || typeF || careerF || empltypeF || eduF) {
					sql = sql + " and";
				}
			}

			if (industryF) {
				sql = sql + " a.industry like '%'||?||'%'";
				if (typeF || careerF || empltypeF || eduF) {
					sql = sql + " and";
				}
			}

			if (typeF) {
				sql = sql + " a.type like '%'||?||'%'";
				if (careerF || empltypeF || eduF) {
					sql = sql + " and";
				}
			}
			if (careerF) {
				sql = sql + " b.career like '%'||?||'%'";
				if (empltypeF || eduF) {
					sql = sql + " and";
				}
			}
			if (empltypeF) {
				sql = sql + " b.empltype like '%'||?||'%'";
				if (eduF) {
					sql = sql + " and";
				}
			}
			if (eduF) {
				sql = sql + " b.edu like '%'||?||'%'";
			}
		}
		return sql;
	}

	public List<Object> createOb(String company, String location, String industry, String type, String career,
			String empltype, String level_of_education) {
		boolean compF = company != null && !company.equals("");
		boolean locF = location != null && !location.equals("");
		boolean industryF = industry != null && !industry.equals("");
		boolean typeF = type != null && !type.equals("");
		boolean careerF = career != null && !career.equals("");
		boolean empltypeF = empltype != null && !empltype.equals("");
		boolean eduF = level_of_education != null && !level_of_education.equals("");
		List<Object> list = new ArrayList<>();
		if (compF || locF || industryF || typeF || careerF || empltypeF || eduF) {
			if (compF) {
				list.add(company);
			}
			if (locF) {
				list.add(location);
			}
			if (industryF) {
				list.add(industry);
			}
			if (typeF) {
				list.add(type);
			}
			if (careerF) {
				list.add(career);
			}
			if (empltypeF) {
				list.add(empltype);
			}
			if (eduF) {
				list.add(level_of_education);
			}
		}
		return list;
	}
}
