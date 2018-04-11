package com.hexa.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hexa.entity.BookingDetails;
import com.hexa.entity.CustomerDetails;
import com.hexa.entity.FlightDetails;
import com.hexa.entity.FlightSchedule;
/**
 * 
 * @author Hvuser
 * @version 1.0
 * <p> It is a class used to get data from database.</p>
 */
@Repository("mydao")
public class FlightDaoImpl implements FlightDao{

	@Autowired
	private SessionFactory sfac;
	
	/**
	 * @param bdet BookingDetails instance.
	 * @return integer value.
	 * <p> This method is used to insert Booking details</p>
	 */
	@Override
	public int addBookingDetails(BookingDetails bdet) {
		Session sess= null;
			Transaction tx= null;
		try {
			sess= sfac.openSession();
			tx = sess.beginTransaction();
			sess.save(bdet);
			tx.commit();
			return 1;
			
		}catch(HibernateException ex) {
			System.out.println(ex.getMessage());
			if(tx!= null)
				tx.rollback();
			
		}finally {
			if(sess!= null) 
				sess.close();
		 }
		return 0;
	 }
	
	/**
	 * @return lst list of flight schedule.
	 * <p> This method is used to get schedule of the flights.</p>
	 */
	@Override
	public List<FlightSchedule> getSchedule() {
		Session sess = sfac.openSession();
		String hql = "from FlightSchedule f inner join fetch f.flight";
		Query qry = sess.createQuery(hql);
		List<FlightSchedule> lst=qry.list();
		sess.close();
		return lst;
	}
	
	/**
	 * @param pnrno 
	 * @return b Booking Details object.
	 * <p> This method is used to get booking details with pnrno.</p>
	 */
	@Override
	public BookingDetails getDetails(int pnrno) {
		Session sess = sfac.openSession();
		String hql ="from BookingDetails b where pnrId=?";
		Query qry = sess.createQuery(hql);
		qry.setInteger(0, pnrno);
		BookingDetails b = (BookingDetails)qry.uniqueResult();
		sess.close();
		return b;
	}
	
	/**
	 * @param schId schedule Id of flight. 
	 * @return fsch Flight Schedule object.
	 * <p> This method is used to get number of seats available.</p>
	 */
	@Override
	public FlightSchedule getSeats(int schId) {
		System.out.println("Session factory " + sfac);
		Session sess = sfac.openSession();
		FlightSchedule fsch =sess.get(FlightSchedule.class, schId);
		sess.close();
		return fsch;
	}
	
	
	/**
	 * @param fsch FlightSchedule object. 
	 * @return integer value.
	 * <p> This method is used to manipulate number of seats.</p>
	 */
	@Override
	public int updateSeats(FlightSchedule fsch) {
		Session sess =sfac.openSession();
		Transaction tx = sess.beginTransaction();
	    sess.update(fsch);
		tx.commit();
		sess.close();
		return 1;
		
	}
	/**
	 * @param src source.
	 * @param dest destination.
	 * @param date Date of flight.
	 * @return lst i.e list of FlightSchedule.
	 * <p> This method is used to get schedule information of the flight.</p>
	 */
	@Override
	public List<FlightSchedule> getScheduleByInfo(String src, String dest, String date) {
		Session sess = sfac.openSession();
		String hql = "from FlightSchedule fs inner join fetch fs.flight f where f.src=? and f.dest=? and fs.schDate=? ";
		Query qry = sess.createQuery(hql);
		qry.setString(0,src);
		qry.setString(1,dest);
		qry.setString(2, date);
		List<FlightSchedule> lst=qry.list();
		return lst;
	}
	
	/** 
	 * @return integer value.
	 * <p> This method is used to get maximum pnrId from the BookingDetails table.</p>
	 */
	@Override
	public int getMaxPnrId() {
		Session sess = sfac.openSession();
		String hql ="select max(pnrId) from BookingDetails";
		Query qry = sess.createQuery(hql);
		int pnrno = (int)qry.uniqueResult();
		sess.close();
		return pnrno;
	}
	

	/**
	 * @param custId i.e customer Id.
	 * @return bd i.e BookingDetails object.
	 * <p> This method is used to get Pnrid from the table.</p>
	 */
	@Override
	public BookingDetails getPnrId(int custId) {
		Session sess = sfac.openSession();
		//String hql ="from BookingDetails bd left join fetch bd.customer where bd.customer.custId= ?";
		String hql ="from BookingDetails bd where bd.customer.custId= ?";
		Query qry = sess.createQuery(hql);
		qry.setInteger(0,custId);
		BookingDetails bd = (BookingDetails) qry.uniqueResult();
		sess.close();
		return bd;
	}
	
	/**
	 * @param username
	 * @param password
	 * @return cd i.e CustomerDetails object.
	 * <p> This method is to check the username and password in customerDetails</p>
	 */
	@Override
	public CustomerDetails getLogin(int username, String pwd) throws NotFoundException {
		Session sess = sfac.openSession();
		String hql="from CustomerDetails cd where cd.custId=? and cd.pwd=?";
		Query qry = sess.createQuery(hql);
		qry.setInteger(0, username);
		qry.setString(1, pwd);
		CustomerDetails cd=(CustomerDetails) qry.uniqueResult();
		if(cd!=null) {
			return cd;
		}
		throw new NotFoundException("Username or Password is incorrect");
		
	}

	}


