package sample;

import javax.ejb.Stateless;

@Stateless(name="SampleSessionBean", mappedName="${artifactId}App-${artifactId}Model-SampleSessionBean")
public class SampleSessionBean
    implements SampleSessionBeanLocal, SampleSessionBeanRemote {

    public SampleSessionBean() {
    }

    public String getSampleString() {
        return "sample"; //$NON-NLS-1$
    }

}
