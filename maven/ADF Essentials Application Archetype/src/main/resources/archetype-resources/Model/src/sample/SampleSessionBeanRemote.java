package sample;

import javax.ejb.Remote;

@Remote
public interface SampleSessionBeanRemote {

    public String getSampleString();

}
