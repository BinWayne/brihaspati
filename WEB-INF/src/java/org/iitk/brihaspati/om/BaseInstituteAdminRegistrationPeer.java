package org.iitk.brihaspati.om;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.apache.torque.NoRowsException;
import org.apache.torque.TooManyRowsException;
import org.apache.torque.Torque;
import org.apache.torque.TorqueException;
import org.apache.torque.map.MapBuilder;
import org.apache.torque.map.TableMap;
import org.apache.torque.om.DateKey;
import org.apache.torque.om.NumberKey;
import org.apache.torque.om.StringKey;
import org.apache.torque.om.ObjectKey;
import org.apache.torque.om.SimpleKey;
import org.apache.torque.util.BasePeer;
import org.apache.torque.util.Criteria;

import com.workingdogs.village.DataSetException;
import com.workingdogs.village.QueryDataSet;
import com.workingdogs.village.Record;

// Local classes
import org.iitk.brihaspati.om.map.*;


/**
 */
public abstract class BaseInstituteAdminRegistrationPeer
    extends BasePeer
{

    /** the default database name for this class */
    public static final String DATABASE_NAME = "brihaspati";

     /** the table name for this class */
    public static final String TABLE_NAME = "INSTITUTE_ADMIN_REGISTRATION";

    /**
     * @return the map builder for this peer
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static MapBuilder getMapBuilder()
        throws TorqueException
    {
        return getMapBuilder(InstituteAdminRegistrationMapBuilder.CLASS_NAME);
    }

      /** the column name for the INSTITUTE_ID field */
    public static final String INSTITUTE_ID;
      /** the column name for the INSTITUTE_NAME field */
    public static final String INSTITUTE_NAME;
      /** the column name for the INSTIUTE_ADDRESS field */
    public static final String INSTIUTE_ADDRESS;
      /** the column name for the CITY field */
    public static final String CITY;
      /** the column name for the PINCODE field */
    public static final String PINCODE;
      /** the column name for the STATE field */
    public static final String STATE;
      /** the column name for the LANDLINE_NO field */
    public static final String LANDLINE_NO;
      /** the column name for the INSTITUTE_DOMAIN field */
    public static final String INSTITUTE_DOMAIN;
      /** the column name for the TYPE_OF_INSTITUTION field */
    public static final String TYPE_OF_INSTITUTION;
      /** the column name for the AFFILIATION field */
    public static final String AFFILIATION;
      /** the column name for the INSTITUTE_WEBSITE field */
    public static final String INSTITUTE_WEBSITE;
      /** the column name for the ADMIN_FNAME field */
    public static final String ADMIN_FNAME;
      /** the column name for the ADMIN_LNAME field */
    public static final String ADMIN_LNAME;
      /** the column name for the ADMIN_EMAIL field */
    public static final String ADMIN_EMAIL;
      /** the column name for the ADMIN_DESIGNATION field */
    public static final String ADMIN_DESIGNATION;
      /** the column name for the ADMIN_UNAME field */
    public static final String ADMIN_UNAME;
      /** the column name for the ADMIN_PASSWORD field */
    public static final String ADMIN_PASSWORD;
      /** the column name for the INSTITUTE_STATUS field */
    public static final String INSTITUTE_STATUS;
  
    static
    {
          INSTITUTE_ID = "INSTITUTE_ADMIN_REGISTRATION.INSTITUTE_ID";
          INSTITUTE_NAME = "INSTITUTE_ADMIN_REGISTRATION.INSTITUTE_NAME";
          INSTIUTE_ADDRESS = "INSTITUTE_ADMIN_REGISTRATION.INSTIUTE_ADDRESS";
          CITY = "INSTITUTE_ADMIN_REGISTRATION.CITY";
          PINCODE = "INSTITUTE_ADMIN_REGISTRATION.PINCODE";
          STATE = "INSTITUTE_ADMIN_REGISTRATION.STATE";
          LANDLINE_NO = "INSTITUTE_ADMIN_REGISTRATION.LANDLINE_NO";
          INSTITUTE_DOMAIN = "INSTITUTE_ADMIN_REGISTRATION.INSTITUTE_DOMAIN";
          TYPE_OF_INSTITUTION = "INSTITUTE_ADMIN_REGISTRATION.TYPE_OF_INSTITUTION";
          AFFILIATION = "INSTITUTE_ADMIN_REGISTRATION.AFFILIATION";
          INSTITUTE_WEBSITE = "INSTITUTE_ADMIN_REGISTRATION.INSTITUTE_WEBSITE";
          ADMIN_FNAME = "INSTITUTE_ADMIN_REGISTRATION.ADMIN_FNAME";
          ADMIN_LNAME = "INSTITUTE_ADMIN_REGISTRATION.ADMIN_LNAME";
          ADMIN_EMAIL = "INSTITUTE_ADMIN_REGISTRATION.ADMIN_EMAIL";
          ADMIN_DESIGNATION = "INSTITUTE_ADMIN_REGISTRATION.ADMIN_DESIGNATION";
          ADMIN_UNAME = "INSTITUTE_ADMIN_REGISTRATION.ADMIN_UNAME";
          ADMIN_PASSWORD = "INSTITUTE_ADMIN_REGISTRATION.ADMIN_PASSWORD";
          INSTITUTE_STATUS = "INSTITUTE_ADMIN_REGISTRATION.INSTITUTE_STATUS";
          if (Torque.isInit())
        {
            try
            {
                getMapBuilder(InstituteAdminRegistrationMapBuilder.CLASS_NAME);
            }
            catch (Exception e)
            {
                log.error("Could not initialize Peer", e);
            }
        }
        else
        {
            Torque.registerMapBuilder(InstituteAdminRegistrationMapBuilder.CLASS_NAME);
        }
    }
 
    /** number of columns for this peer */
    public static final int numColumns =  18;

    /** A class that can be returned by this peer. */
    protected static final String CLASSNAME_DEFAULT =
        "org.iitk.brihaspati.om.InstituteAdminRegistration";

    /** A class that can be returned by this peer. */
    protected static final Class CLASS_DEFAULT = initClass(CLASSNAME_DEFAULT);

    /**
     * Class object initialization method.
     *
     * @param className name of the class to initialize
     * @return the initialized class
     */
    private static Class initClass(String className)
    {
        Class c = null;
        try
        {
            c = Class.forName(className);
        }
        catch (Throwable t)
        {
            log.error("A FATAL ERROR has occurred which should not "
                + "have happened under any circumstance.  Please notify "
                + "the Torque developers <torque-dev@db.apache.org> "
                + "and give as many details as possible (including the error "
                + "stack trace).", t);

            // Error objects should always be propogated.
            if (t instanceof Error)
            {
                throw (Error) t.fillInStackTrace();
            }
        }
        return c;
    }

    /**
     * Get the list of objects for a ResultSet.  Please not that your
     * resultset MUST return columns in the right order.  You can use
     * getFieldNames() in BaseObject to get the correct sequence.
     *
     * @param results the ResultSet
     * @return the list of objects
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static List resultSet2Objects(java.sql.ResultSet results)
            throws TorqueException
    {
        try
        {
            QueryDataSet qds = null;
            List rows = null;
            try
            {
                qds = new QueryDataSet(results);
                rows = getSelectResults(qds);
            }
            finally
            {
                if (qds != null)
                {
                    qds.close();
                }
            }

            return populateObjects(rows);
        }
        catch (SQLException e)
        {
            throw new TorqueException(e);
        }
        catch (DataSetException e)
        {
            throw new TorqueException(e);
        }
    }


  
    /**
     * Method to do inserts.
     *
     * @param criteria object used to create the INSERT statement.
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static ObjectKey doInsert(Criteria criteria)
        throws TorqueException
    {
        return BaseInstituteAdminRegistrationPeer
            .doInsert(criteria, (Connection) null);
    }

    /**
     * Method to do inserts.  This method is to be used during a transaction,
     * otherwise use the doInsert(Criteria) method.  It will take care of
     * the connection details internally.
     *
     * @param criteria object used to create the INSERT statement.
     * @param con the connection to use
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static ObjectKey doInsert(Criteria criteria, Connection con)
        throws TorqueException
    {
                                                                                                              
        // Set the correct dbName if it has not been overridden
        // criteria.getDbName will return the same object if not set to
        // another value so == check is okay and faster
        if (criteria.getDbName() == Torque.getDefaultDB())
        {
            criteria.setDbName(DATABASE_NAME);
        }
        if (con == null)
        {
            return BasePeer.doInsert(criteria);
        }
        else
        {
            return BasePeer.doInsert(criteria, con);
        }
    }

    /**
     * Add all the columns needed to create a new object.
     *
     * @param criteria object containing the columns to add.
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static void addSelectColumns(Criteria criteria)
            throws TorqueException
    {
          criteria.addSelectColumn(INSTITUTE_ID);
          criteria.addSelectColumn(INSTITUTE_NAME);
          criteria.addSelectColumn(INSTIUTE_ADDRESS);
          criteria.addSelectColumn(CITY);
          criteria.addSelectColumn(PINCODE);
          criteria.addSelectColumn(STATE);
          criteria.addSelectColumn(LANDLINE_NO);
          criteria.addSelectColumn(INSTITUTE_DOMAIN);
          criteria.addSelectColumn(TYPE_OF_INSTITUTION);
          criteria.addSelectColumn(AFFILIATION);
          criteria.addSelectColumn(INSTITUTE_WEBSITE);
          criteria.addSelectColumn(ADMIN_FNAME);
          criteria.addSelectColumn(ADMIN_LNAME);
          criteria.addSelectColumn(ADMIN_EMAIL);
          criteria.addSelectColumn(ADMIN_DESIGNATION);
          criteria.addSelectColumn(ADMIN_UNAME);
          criteria.addSelectColumn(ADMIN_PASSWORD);
          criteria.addSelectColumn(INSTITUTE_STATUS);
      }

    /**
     * Create a new object of type cls from a resultset row starting
     * from a specified offset.  This is done so that you can select
     * other rows than just those needed for this object.  You may
     * for example want to create two objects from the same row.
     *
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static InstituteAdminRegistration row2Object(Record row,
                                             int offset,
                                             Class cls)
        throws TorqueException
    {
        try
        {
            InstituteAdminRegistration obj = (InstituteAdminRegistration) cls.newInstance();
            InstituteAdminRegistrationPeer.populateObject(row, offset, obj);
                  obj.setModified(false);
              obj.setNew(false);

            return obj;
        }
        catch (InstantiationException e)
        {
            throw new TorqueException(e);
        }
        catch (IllegalAccessException e)
        {
            throw new TorqueException(e);
        }
    }

    /**
     * Populates an object from a resultset row starting
     * from a specified offset.  This is done so that you can select
     * other rows than just those needed for this object.  You may
     * for example want to create two objects from the same row.
     *
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static void populateObject(Record row,
                                      int offset,
                                      InstituteAdminRegistration obj)
        throws TorqueException
    {
        try
        {
                obj.setInstituteId(row.getValue(offset + 0).asInt());
                  obj.setInstituteName(row.getValue(offset + 1).asString());
                  obj.setInstiuteAddress(row.getValue(offset + 2).asString());
                  obj.setCity(row.getValue(offset + 3).asString());
                  obj.setPincode(row.getValue(offset + 4).asInt());
                  obj.setState(row.getValue(offset + 5).asString());
                  obj.setLandlineNo(row.getValue(offset + 6).asInt());
                  obj.setInstituteDomain(row.getValue(offset + 7).asString());
                  obj.setTypeOfInstitution(row.getValue(offset + 8).asString());
                  obj.setAffiliation(row.getValue(offset + 9).asString());
                  obj.setInstituteWebsite(row.getValue(offset + 10).asString());
                  obj.setAdminFname(row.getValue(offset + 11).asString());
                  obj.setAdminLname(row.getValue(offset + 12).asString());
                  obj.setAdminEmail(row.getValue(offset + 13).asString());
                  obj.setAdminDesignation(row.getValue(offset + 14).asString());
                  obj.setAdminUname(row.getValue(offset + 15).asString());
                  obj.setAdminPassword(row.getValue(offset + 16).asString());
                  obj.setInstituteStatus(row.getValue(offset + 17).asInt());
              }
        catch (DataSetException e)
        {
            throw new TorqueException(e);
        }
    }

    /**
     * Method to do selects.
     *
     * @param criteria object used to create the SELECT statement.
     * @return List of selected Objects
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static List doSelect(Criteria criteria) throws TorqueException
    {
        return populateObjects(doSelectVillageRecords(criteria));
    }

    /**
     * Method to do selects within a transaction.
     *
     * @param criteria object used to create the SELECT statement.
     * @param con the connection to use
     * @return List of selected Objects
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static List doSelect(Criteria criteria, Connection con)
        throws TorqueException
    {
        return populateObjects(doSelectVillageRecords(criteria, con));
    }

    /**
     * Grabs the raw Village records to be formed into objects.
     * This method handles connections internally.  The Record objects
     * returned by this method should be considered readonly.  Do not
     * alter the data and call save(), your results may vary, but are
     * certainly likely to result in hard to track MT bugs.
     *
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static List doSelectVillageRecords(Criteria criteria)
        throws TorqueException
    {
        return BaseInstituteAdminRegistrationPeer
            .doSelectVillageRecords(criteria, (Connection) null);
    }

    /**
     * Grabs the raw Village records to be formed into objects.
     * This method should be used for transactions
     *
     * @param con the connection to use
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static List doSelectVillageRecords(Criteria criteria, Connection con)
        throws TorqueException
    {
        if (criteria.getSelectColumns().size() == 0)
        {
            addSelectColumns(criteria);
        }

                                                                                                              
        // Set the correct dbName if it has not been overridden
        // criteria.getDbName will return the same object if not set to
        // another value so == check is okay and faster
        if (criteria.getDbName() == Torque.getDefaultDB())
        {
            criteria.setDbName(DATABASE_NAME);
        }
        // BasePeer returns a List of Value (Village) arrays.  The array
        // order follows the order columns were placed in the Select clause.
        if (con == null)
        {
            return BasePeer.doSelect(criteria);
        }
        else
        {
            return BasePeer.doSelect(criteria, con);
        }
    }

    /**
     * The returned List will contain objects of the default type or
     * objects that inherit from the default.
     *
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static List populateObjects(List records)
        throws TorqueException
    {
        List results = new ArrayList(records.size());

        // populate the object(s)
        for (int i = 0; i < records.size(); i++)
        {
            Record row = (Record) records.get(i);
              results.add(InstituteAdminRegistrationPeer.row2Object(row, 1,
                InstituteAdminRegistrationPeer.getOMClass()));
          }
        return results;
    }
 

    /**
     * The class that the Peer will make instances of.
     * If the BO is abstract then you must implement this method
     * in the BO.
     *
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static Class getOMClass()
        throws TorqueException
    {
        return CLASS_DEFAULT;
    }

    /**
     * Method to do updates.
     *
     * @param criteria object containing data that is used to create the UPDATE
     *        statement.
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static void doUpdate(Criteria criteria) throws TorqueException
    {
         BaseInstituteAdminRegistrationPeer
            .doUpdate(criteria, (Connection) null);
    }

    /**
     * Method to do updates.  This method is to be used during a transaction,
     * otherwise use the doUpdate(Criteria) method.  It will take care of
     * the connection details internally.
     *
     * @param criteria object containing data that is used to create the UPDATE
     *        statement.
     * @param con the connection to use
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static void doUpdate(Criteria criteria, Connection con)
        throws TorqueException
    {
        Criteria selectCriteria = new Criteria(DATABASE_NAME, 2);
                   selectCriteria.put(INSTITUTE_ID, criteria.remove(INSTITUTE_ID));
                                                                                                                                                                                
        // Set the correct dbName if it has not been overridden
        // criteria.getDbName will return the same object if not set to
        // another value so == check is okay and faster
        if (criteria.getDbName() == Torque.getDefaultDB())
        {
            criteria.setDbName(DATABASE_NAME);
        }
        if (con == null)
        {
            BasePeer.doUpdate(selectCriteria, criteria);
        }
        else
        {
            BasePeer.doUpdate(selectCriteria, criteria, con);
        }
    }

    /**
     * Method to do deletes.
     *
     * @param criteria object containing data that is used DELETE from database.
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
     public static void doDelete(Criteria criteria) throws TorqueException
     {
         BaseInstituteAdminRegistrationPeer
            .doDelete(criteria, (Connection) null);
     }

    /**
     * Method to do deletes.  This method is to be used during a transaction,
     * otherwise use the doDelete(Criteria) method.  It will take care of
     * the connection details internally.
     *
     * @param criteria object containing data that is used DELETE from database.
     * @param con the connection to use
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
     public static void doDelete(Criteria criteria, Connection con)
        throws TorqueException
     {
                                                                                                              
        // Set the correct dbName if it has not been overridden
        // criteria.getDbName will return the same object if not set to
        // another value so == check is okay and faster
        if (criteria.getDbName() == Torque.getDefaultDB())
        {
            criteria.setDbName(DATABASE_NAME);
        }
        if (con == null)
        {
            BasePeer.doDelete(criteria);
        }
        else
        {
            BasePeer.doDelete(criteria, con);
        }
     }

    /**
     * Method to do selects
     *
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static List doSelect(InstituteAdminRegistration obj) throws TorqueException
    {
        return doSelect(buildCriteria(obj));
    }

    /**
     * Method to do inserts
     *
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static void doInsert(InstituteAdminRegistration obj) throws TorqueException
    {
          obj.setPrimaryKey(doInsert(buildCriteria(obj)));
          obj.setNew(false);
        obj.setModified(false);
    }

    /**
     * @param obj the data object to update in the database.
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static void doUpdate(InstituteAdminRegistration obj) throws TorqueException
    {
        doUpdate(buildCriteria(obj));
        obj.setModified(false);
    }

    /**
     * @param obj the data object to delete in the database.
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static void doDelete(InstituteAdminRegistration obj) throws TorqueException
    {
        doDelete(buildCriteria(obj));
    }

    /**
     * Method to do inserts.  This method is to be used during a transaction,
     * otherwise use the doInsert(InstituteAdminRegistration) method.  It will take
     * care of the connection details internally.
     *
     * @param obj the data object to insert into the database.
     * @param con the connection to use
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static void doInsert(InstituteAdminRegistration obj, Connection con)
        throws TorqueException
    {
          obj.setPrimaryKey(doInsert(buildCriteria(obj), con));
          obj.setNew(false);
        obj.setModified(false);
    }

    /**
     * Method to do update.  This method is to be used during a transaction,
     * otherwise use the doUpdate(InstituteAdminRegistration) method.  It will take
     * care of the connection details internally.
     *
     * @param obj the data object to update in the database.
     * @param con the connection to use
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static void doUpdate(InstituteAdminRegistration obj, Connection con)
        throws TorqueException
    {
        doUpdate(buildCriteria(obj), con);
        obj.setModified(false);
    }

    /**
     * Method to delete.  This method is to be used during a transaction,
     * otherwise use the doDelete(InstituteAdminRegistration) method.  It will take
     * care of the connection details internally.
     *
     * @param obj the data object to delete in the database.
     * @param con the connection to use
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static void doDelete(InstituteAdminRegistration obj, Connection con)
        throws TorqueException
    {
        doDelete(buildCriteria(obj), con);
    }

    /**
     * Method to do deletes.
     *
     * @param pk ObjectKey that is used DELETE from database.
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static void doDelete(ObjectKey pk) throws TorqueException
    {
        BaseInstituteAdminRegistrationPeer
           .doDelete(pk, (Connection) null);
    }

    /**
     * Method to delete.  This method is to be used during a transaction,
     * otherwise use the doDelete(ObjectKey) method.  It will take
     * care of the connection details internally.
     *
     * @param pk the primary key for the object to delete in the database.
     * @param con the connection to use
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static void doDelete(ObjectKey pk, Connection con)
        throws TorqueException
    {
        doDelete(buildCriteria(pk), con);
    }

    /** Build a Criteria object from an ObjectKey */
    public static Criteria buildCriteria( ObjectKey pk )
    {
        Criteria criteria = new Criteria();
              criteria.add(INSTITUTE_ID, pk);
          return criteria;
     }

    /** Build a Criteria object from the data object for this peer */
    public static Criteria buildCriteria( InstituteAdminRegistration obj )
    {
        Criteria criteria = new Criteria(DATABASE_NAME);
              if (!obj.isNew())
                criteria.add(INSTITUTE_ID, obj.getInstituteId());
                  criteria.add(INSTITUTE_NAME, obj.getInstituteName());
                  criteria.add(INSTIUTE_ADDRESS, obj.getInstiuteAddress());
                  criteria.add(CITY, obj.getCity());
                  criteria.add(PINCODE, obj.getPincode());
                  criteria.add(STATE, obj.getState());
                  criteria.add(LANDLINE_NO, obj.getLandlineNo());
                  criteria.add(INSTITUTE_DOMAIN, obj.getInstituteDomain());
                  criteria.add(TYPE_OF_INSTITUTION, obj.getTypeOfInstitution());
                  criteria.add(AFFILIATION, obj.getAffiliation());
                  criteria.add(INSTITUTE_WEBSITE, obj.getInstituteWebsite());
                  criteria.add(ADMIN_FNAME, obj.getAdminFname());
                  criteria.add(ADMIN_LNAME, obj.getAdminLname());
                  criteria.add(ADMIN_EMAIL, obj.getAdminEmail());
                  criteria.add(ADMIN_DESIGNATION, obj.getAdminDesignation());
                  criteria.add(ADMIN_UNAME, obj.getAdminUname());
                  criteria.add(ADMIN_PASSWORD, obj.getAdminPassword());
                  criteria.add(INSTITUTE_STATUS, obj.getInstituteStatus());
          return criteria;
    }
 
    
        /**
     * Retrieve a single object by pk
     *
     * @param pk the primary key
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     * @throws NoRowsException Primary key was not found in database.
     * @throws TooManyRowsException Primary key was not found in database.
     */
    public static InstituteAdminRegistration retrieveByPK(int pk)
        throws TorqueException, NoRowsException, TooManyRowsException
    {
        return retrieveByPK(SimpleKey.keyFor(pk));
    }
  
    /**
     * Retrieve a single object by pk
     *
     * @param pk the primary key
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     * @throws NoRowsException Primary key was not found in database.
     * @throws TooManyRowsException Primary key was not found in database.
     */
    public static InstituteAdminRegistration retrieveByPK(ObjectKey pk)
        throws TorqueException, NoRowsException, TooManyRowsException
    {
        Connection db = null;
        InstituteAdminRegistration retVal = null;
        try
        {
            db = Torque.getConnection(DATABASE_NAME);
            retVal = retrieveByPK(pk, db);
        }
        finally
        {
            Torque.closeConnection(db);
        }
        return(retVal);
    }

    /**
     * Retrieve a single object by pk
     *
     * @param pk the primary key
     * @param con the connection to use
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     * @throws NoRowsException Primary key was not found in database.
     * @throws TooManyRowsException Primary key was not found in database.
     */
    public static InstituteAdminRegistration retrieveByPK(ObjectKey pk, Connection con)
        throws TorqueException, NoRowsException, TooManyRowsException
    {
        Criteria criteria = buildCriteria(pk);
        List v = doSelect(criteria, con);
        if (v.size() == 0)
        {
            throw new NoRowsException("Failed to select a row.");
        }
        else if (v.size() > 1)
        {
            throw new TooManyRowsException("Failed to select only one row.");
        }
        else
        {
            return (InstituteAdminRegistration)v.get(0);
        }
    }

    /**
     * Retrieve a multiple objects by pk
     *
     * @param pks List of primary keys
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static List retrieveByPKs(List pks)
        throws TorqueException
    {
        Connection db = null;
        List retVal = null;
        try
        {
           db = Torque.getConnection(DATABASE_NAME);
           retVal = retrieveByPKs(pks, db);
        }
        finally
        {
            Torque.closeConnection(db);
        }
        return(retVal);
    }

    /**
     * Retrieve a multiple objects by pk
     *
     * @param pks List of primary keys
     * @param dbcon the connection to use
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    public static List retrieveByPKs( List pks, Connection dbcon )
        throws TorqueException
    {
        List objs = null;
        if (pks == null || pks.size() == 0)
        {
            objs = new LinkedList();
        }
        else
        {
            Criteria criteria = new Criteria();
              criteria.addIn( INSTITUTE_ID, pks );
          objs = doSelect(criteria, dbcon);
        }
        return objs;
    }

 



        
  
  
    
  
      /**
     * Returns the TableMap related to this peer.  This method is not
     * needed for general use but a specific application could have a need.
     *
     * @throws TorqueException Any exceptions caught during processing will be
     *         rethrown wrapped into a TorqueException.
     */
    protected static TableMap getTableMap()
        throws TorqueException
    {
        return Torque.getDatabaseMap(DATABASE_NAME).getTable(TABLE_NAME);
    }
   }
