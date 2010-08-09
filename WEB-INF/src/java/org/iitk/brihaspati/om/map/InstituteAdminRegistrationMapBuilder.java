package org.iitk.brihaspati.om.map;

import java.util.Date;
import java.math.BigDecimal;

import org.apache.torque.Torque;
import org.apache.torque.TorqueException;
import org.apache.torque.map.MapBuilder;
import org.apache.torque.map.DatabaseMap;
import org.apache.torque.map.TableMap;

/**
  */
public class InstituteAdminRegistrationMapBuilder implements MapBuilder
{
    /**
     * The name of this class
     */
    public static final String CLASS_NAME =
        "org.iitk.brihaspati.om.map.InstituteAdminRegistrationMapBuilder";


    /**
     * The database map.
     */
    private DatabaseMap dbMap = null;

    /**
     * Tells us if this DatabaseMapBuilder is built so that we
     * don't have to re-build it every time.
     *
     * @return true if this DatabaseMapBuilder is built
     */
    public boolean isBuilt()
    {
        return (dbMap != null);
    }

    /**
     * Gets the databasemap this map builder built.
     *
     * @return the databasemap
     */
    public DatabaseMap getDatabaseMap()
    {
        return this.dbMap;
    }

    /**
     * The doBuild() method builds the DatabaseMap
     *
     * @throws TorqueException
     */
    public void doBuild() throws TorqueException
    {
        dbMap = Torque.getDatabaseMap("brihaspati");

        dbMap.addTable("INSTITUTE_ADMIN_REGISTRATION");
        TableMap tMap = dbMap.getTable("INSTITUTE_ADMIN_REGISTRATION");

        tMap.setPrimaryKeyMethod(TableMap.ID_BROKER);

        tMap.setPrimaryKeyMethodInfo(tMap.getName());

              tMap.addPrimaryKey("INSTITUTE_ADMIN_REGISTRATION.INSTITUTE_ID", new Integer(0));
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.INSTITUTE_NAME", new String());
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.INSTIUTE_ADDRESS", new String());
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.CITY", new String());
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.PINCODE", new Integer(0));
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.STATE", new String());
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.LANDLINE_NO", new Integer(0));
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.INSTITUTE_DOMAIN", new String());
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.TYPE_OF_INSTITUTION", new String());
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.AFFILIATION", new String());
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.INSTITUTE_WEBSITE", new String());
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.ADMIN_FNAME", new String());
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.ADMIN_LNAME", new String());
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.ADMIN_EMAIL", new String());
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.ADMIN_DESIGNATION", new String());
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.ADMIN_UNAME", new String());
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.ADMIN_PASSWORD", new String());
                    tMap.addColumn("INSTITUTE_ADMIN_REGISTRATION.INSTITUTE_STATUS", new Integer(0));
          }
}
