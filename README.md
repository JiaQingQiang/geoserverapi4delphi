# geoserverapi4delphi
a sample displays Delphi calling the Geoserver Api

This sample will tell you about how to uses delphi to call geoserver rest api
If you learn this one method, everything else will be fine!

Firstly,you can look at this GeoSerber official website about the API DOCS.
The url is https://docs.geoserver.org/latest/en/user/rest/index.html#rest

You can enter different interfaces to view according to different needs。

Secondly,take adding layers to GeoServer as an example.
You should click the link "/layers" ,then you will find some different ways based on different scenarios,as follows is example:
/workspaces/{workspaceName}/coveragestores/{coveragestoreName}/coverages, /workspaces/{workspaceName}/datastores/{datastoreName}/featuretypes, /workspaces/{workspaceName}/wmsstores/{wmsstoreName}/wmslayers, or /workspaces/{workspaceName}/wmtsstores/{wmststoreName}/wmtslayers

The sample based on the /workspaces/{workspaceName}/datastores/{datastoreName}/featuretypes。

1.Open the project 
2.Test your Geoserver rest services, the valid rest service is usually like this:'http://host:port/geoserver/rest/workspaces/{your workspace}/datastores/{your datastores}/featuretypes',if the reponse is valid or existed,now you can follow the third step
3.enter the TEdit of EditLayeraddrestapi,write your rest service url
4.write a xml file,the valid xml file is like this:
  <featureType>
	<name>{layername}</name>
</featureType>
5.enter the TEdit of EditLayeraddrestapi,write your xml path
6.click the button and check your geoserver ,you will find the layer has been added successfully.


Notes:
the grouplayer append layer xml file is like this:
    <layerGroup>
  <id>LayerGroupInfoImpl--4bfd22d6:181c87427aa:-7be6</id>
  <name>test</name>
  <mode>SINGLE</mode>
  <internationalTitle/>
  <internationalAbstract/>
  <publishables>
    <published type="layer">
      <id>LayerInfoImpl--4bfd22d6:181c87427aa:-7be7</id>
    </published>
    <published type="layer">
      <id>LayerInfoImpl--4bfd22d6:181c87427aa:-7be9</id>
    </published>
  </publishables>
  <styles>
    <style>
      <id>StyleInfoImpl--570ae188:124761b8d78:-7fdf</id>
    </style>
    <style>
      <id>StyleInfoImpl--570ae188:124761b8d78:-7fe0</id>
    </style>
  </styles>
  <dateCreated>2022-07-13 09:06:09.659 UTC</dateCreated>
  <dateModified>2022-07-13 09:24:47.176 UTC</dateModified>
</layerGroup>
