package sample;

import javax.ejb.Local;

@Local
public interface SampleSessionBeanLocal {

    public String getSampleString();

}
