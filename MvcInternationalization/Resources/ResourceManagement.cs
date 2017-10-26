using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Resources
{
    class ResourceManagement
    {
        //protected string proString;
        //private string privString;
        //internal string internString;
        //protected internal string proInternString;
        //public string publString;

        public void getString()
        {
            //Console.WriteLine(publString);
        }
    }

    public class PublicResourceManagement
    {
        //protected string proString;
        //private string privString;
        //internal string internString;
        //protected internal string proInternString;
        //public string publString;
        public void getString()
        {
            //Console.WriteLine(publString);
        }
    }


    internal class InternalResourceManagement : PublicResourceManagement
    {
        protected internal class NestedInternalResourceManagement
        {
            protected string proString;
            private string privString;
            internal string internString;
            protected internal string proInternString;
            public string publString;
        }

        protected class NestedProtected
        {
            protected string proString;
            private string privString;
            internal string internString;
            protected internal string proInternString;
            public string publString;
        }

        public void getString()
        {
            //Console.WriteLine(publString);
        }

    }

}