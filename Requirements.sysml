<?xml version="1.0" encoding="UTF-8"?>
<uml:Model xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:sysML="http://www.topcased.org/2.0/sysML" xmlns:uml="http://www.eclipse.org/uml2/3.0.0/UML" xmi:id="idModel" name="DefaultName">
  <packagedElement xmi:type="uml:Package" xmi:id="idPackage" name="DefaultName">
    <packagedElement xmi:type="sysML:Requirement" xmi:id="_ClF1sPhIEeGbtJOpBIKWtQ" name="Communicates seamlessly via NFC" isAbstract="true" text="NFC Communication cannot be a hassle and cannot slow down the game"/>
    <packagedElement xmi:type="sysML:TestCase" xmi:id="_p_QFUPudEeG-kvyVSZOijQ" name="NFC Communication Speed on real devices" clientDependency="_xyPggPudEeG-kvyVSZOijQ"/>
    <packagedElement xmi:type="uml:Dependency" xmi:id="_xyPggPudEeG-kvyVSZOijQ" name="Dependency1" supplier="_ClF1sPhIEeGbtJOpBIKWtQ" client="_p_QFUPudEeG-kvyVSZOijQ"/>
    <packagedElement xmi:type="sysML:Requirement" xmi:id="_25DCQPudEeG-kvyVSZOijQ" name="Maintains state for appropriate time" isAbstract="true" text="After a death, do not allow more kills/deaths until cooldown is complete"/>
    <packagedElement xmi:type="sysML:Requirement" xmi:id="_Ih_18PueEeG-kvyVSZOijQ" name="Alert system that is not obtrusive" isAbstract="true" text="Users should be notified of changes in state without losing greater functionality over device"/>
    <packagedElement xmi:type="sysML:Requirement" xmi:id="_RAuVwPueEeG-kvyVSZOijQ" name="One-Step access to &quot;Kill&quot; Functionality" isAbstract="true" text="User can enter &quot;kill&quot; mode without going through menu screens"/>
    <packagedElement xmi:type="sysML:Requirement" xmi:id="_iqY7IPueEeG-kvyVSZOijQ" name="Transfer Information Via NFC" isAbstract="true" text="Allow phones to transfer kill/death log and assimilate across network of play"/>
    <packagedElement xmi:type="sysML:Requirement" xmi:id="_zHfmwPueEeG-kvyVSZOijQ" name="Configure username" isAbstract="true" text="Allow user to set Username for Session"/>
    <packagedElement xmi:type="sysML:Requirement" xmi:id="_4O8owPueEeG-kvyVSZOijQ" name="Kill/Death Log" isAbstract="true" text="Maintain a log of kills and deaths saved between games"/>
    <packagedElement xmi:type="sysML:Requirement" xmi:id="_GHTMkCxbEeKR-ctld-DkEg" name="Secure person information" isAbstract="true" text="All personal information provided by players including location will be kept secure"/>
    <packagedElement xmi:type="sysML:Requirement" xmi:id="__caHQCxtEeKR-ctld-DkEg" name="Transfer information via server" isAbstract="true" text="Allow phones to log kills and deaths with the server quickly."/>
  </packagedElement>
  <profileApplication xmi:type="uml:ProfileApplication" xmi:id="idProfileApplication">
    <eAnnotations xmi:type="ecore:EAnnotation" xmi:id="idProfileAnnotation" source="http://www.eclipse.org/uml2/2.0.0/UML">
      <references xmi:type="ecore:EPackage" href="pathmap://SysMLActivityExtensionsProfile.uml#ProfileContentId"/>
    </eAnnotations>
    <appliedProfile xmi:type="uml:Profile" href="pathmap://SysMLActivityExtensionsProfile.uml#ActivityProfileId"/>
  </profileApplication>
</uml:Model>
