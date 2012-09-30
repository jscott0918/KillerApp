<?xml version="1.0" encoding="UTF-8"?>
<uml:Model xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:sysML="http://www.topcased.org/2.0/sysML" xmlns:uml="http://www.eclipse.org/uml2/3.0.0/UML" xmi:id="idModel" name="UseCase_1">
  <packagedElement xmi:type="uml:Package" xmi:id="idPackage" name="UseCase_1">
    <packagedElement xmi:type="sysML:View" xmi:id="_NB-NAPOiEeGbnfJ89GcO6g" name="View1">
      <packagedElement xmi:type="uml:Actor" xmi:id="_PXSekPOiEeGbnfJ89GcO6g" name="Player"/>
      <packagedElement xmi:type="uml:Actor" xmi:id="_4aPekPOiEeGbnfJ89GcO6g" name="Attacker">
        <generalization xmi:type="uml:Generalization" xmi:id="_m9AWMPOjEeGbnfJ89GcO6g" general="_PXSekPOiEeGbnfJ89GcO6g"/>
      </packagedElement>
      <packagedElement xmi:type="uml:Actor" xmi:id="_9hRp0POiEeGbnfJ89GcO6g" name="Victim">
        <generalization xmi:type="uml:Generalization" xmi:id="_nsVhYPOjEeGbnfJ89GcO6g" general="_PXSekPOiEeGbnfJ89GcO6g"/>
      </packagedElement>
      <packagedElement xmi:type="uml:Actor" xmi:id="_ApibQPOjEeGbnfJ89GcO6g" name="Device" clientDependency="_Zp4uYPhFEeGbtJOpBIKWtQ"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_VNQ-APOjEeGbnfJ89GcO6g" name=""/>
      <packagedElement xmi:type="uml:Association" xmi:id="_qywfwPOjEeGbnfJ89GcO6g" name="Player joins game" memberEnd="_qywfwfOjEeGbnfJ89GcO6g _qywfxPOjEeGbnfJ89GcO6g">
        <ownedEnd xmi:type="uml:Property" xmi:id="_qywfwfOjEeGbnfJ89GcO6g" name="player" type="_PXSekPOiEeGbnfJ89GcO6g" association="_qywfwPOjEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_qywfwvOjEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_qywfw_OjEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_qywfxPOjEeGbnfJ89GcO6g" name="join Game" type="_VNQ-APOjEeGbnfJ89GcO6g" association="_qywfwPOjEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_qywfxfOjEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_qywfxvOjEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_sSRxwPOjEeGbnfJ89GcO6g" name="Enter attack mode"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_xkhHcPOjEeGbnfJ89GcO6g" name="" memberEnd="_xkhHcfOjEeGbnfJ89GcO6g _xkhHdPOjEeGbnfJ89GcO6g">
        <ownedEnd xmi:type="uml:Property" xmi:id="_xkhHcfOjEeGbnfJ89GcO6g" name="attacker" type="_4aPekPOiEeGbnfJ89GcO6g" association="_xkhHcPOjEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_xkhHcvOjEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_xkhHc_OjEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_xkhHdPOjEeGbnfJ89GcO6g" name="enter attack mode" type="_sSRxwPOjEeGbnfJ89GcO6g" association="_xkhHcPOjEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_xkhHdfOjEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_xkhHdvOjEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_zMkqYPOjEeGbnfJ89GcO6g" name="Receive notification on being attacked" clientDependency="_-IGGkAaYEeKDzqAuHGoRIA _Fzk5RAszEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_3DIsQPOjEeGbnfJ89GcO6g" name="Victim is notified they have been killed" memberEnd="_3DJTUPOjEeGbnfJ89GcO6g _3DJTU_OjEeGbnfJ89GcO6g">
        <ownedEnd xmi:type="uml:Property" xmi:id="_3DJTUPOjEeGbnfJ89GcO6g" name="defender" type="_9hRp0POiEeGbnfJ89GcO6g" association="_3DIsQPOjEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_3DJTUfOjEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_3DJTUvOjEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_3DJTU_OjEeGbnfJ89GcO6g" name="alert on being attacked" type="_zMkqYPOjEeGbnfJ89GcO6g" association="_3DIsQPOjEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_3DJTVPOjEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_3DJTVfOjEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_QAp5wPOkEeGbnfJ89GcO6g" name="Personal Stats" clientDependency="_kkprtAsxEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_SIfwAPOkEeGbnfJ89GcO6g" name="A_&lt;player>_&lt;check kills/deaths>" memberEnd="_SIfwAfOkEeGbnfJ89GcO6g _SIfwBPOkEeGbnfJ89GcO6g">
        <ownedEnd xmi:type="uml:Property" xmi:id="_SIfwAfOkEeGbnfJ89GcO6g" name="player" type="_PXSekPOiEeGbnfJ89GcO6g" association="_SIfwAPOkEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_SIfwAvOkEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_SIfwA_OkEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_SIfwBPOkEeGbnfJ89GcO6g" name="check kills/deaths" type="_QAp5wPOkEeGbnfJ89GcO6g" association="_SIfwAPOkEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_SIfwBfOkEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_SIfwBvOkEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_VAEaEPOkEeGbnfJ89GcO6g" name=""/>
      <packagedElement xmi:type="uml:Association" xmi:id="_ew6CAPOkEeGbnfJ89GcO6g" name="Device notifies user of successful kill" memberEnd="_ew6CAfOkEeGbnfJ89GcO6g _ew6CBPOkEeGbnfJ89GcO6g">
        <ownedEnd xmi:type="uml:Property" xmi:id="_ew6CAfOkEeGbnfJ89GcO6g" name="device" type="_ApibQPOjEeGbnfJ89GcO6g" association="_ew6CAPOkEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_ew6CAvOkEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_ew6CA_OkEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_ew6CBPOkEeGbnfJ89GcO6g" name="alert on kill/killed" type="_VAEaEPOkEeGbnfJ89GcO6g" association="_ew6CAPOkEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_ew6CBfOkEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_ew6CBvOkEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_yj4AwPOlEeGbnfJ89GcO6g" name="Leave Game"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_3RDhkPOlEeGbnfJ89GcO6g" name="" memberEnd="_3RDhkfOlEeGbnfJ89GcO6g _3RDhlPOlEeGbnfJ89GcO6g">
        <ownedEnd xmi:type="uml:Property" xmi:id="_3RDhkfOlEeGbnfJ89GcO6g" name="leave Game" type="_yj4AwPOlEeGbnfJ89GcO6g" association="_3RDhkPOlEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_3RDhkvOlEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_3RDhk_OlEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_3RDhlPOlEeGbnfJ89GcO6g" name="player" type="_PXSekPOiEeGbnfJ89GcO6g" association="_3RDhkPOlEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_3RDhlfOlEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_3RDhlvOlEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_DHEGQPOmEeGbnfJ89GcO6g" name="Kill" classifierBehavior="_E5xaAPOmEeGbnfJ89GcO6g">
        <ownedBehavior xmi:type="uml:Activity" xmi:id="_E5xaAPOmEeGbnfJ89GcO6g" name="UseCase1Detail"/>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_EBd5APOmEeGbnfJ89GcO6g" name="A_&lt;useCase1>_&lt;attacker>" memberEnd="_EBd5AfOmEeGbnfJ89GcO6g _EBd5BPOmEeGbnfJ89GcO6g">
        <ownedEnd xmi:type="uml:Property" xmi:id="_EBd5AfOmEeGbnfJ89GcO6g" name="useCase1" type="_DHEGQPOmEeGbnfJ89GcO6g" association="_EBd5APOmEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_EBd5AvOmEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_EBd5A_OmEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_EBd5BPOmEeGbnfJ89GcO6g" name="attacker" type="_4aPekPOiEeGbnfJ89GcO6g" association="_EBd5APOmEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_EBd5BfOmEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_EBd5BvOmEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_wy5V4POmEeGbnfJ89GcO6g" name="Out of play for fixed time period" clientDependency="_KiP6IAaZEeKDzqAuHGoRIA _-UbuhAsvEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_zQOT8POmEeGbnfJ89GcO6g" name="A_&lt;defender>_&lt;died>" memberEnd="_zQO7APOmEeGbnfJ89GcO6g _zQO7A_OmEeGbnfJ89GcO6g">
        <ownedEnd xmi:type="uml:Property" xmi:id="_zQO7APOmEeGbnfJ89GcO6g" name="defender" type="_PXSekPOiEeGbnfJ89GcO6g" association="_zQOT8POmEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_zQO7AfOmEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_zQO7AvOmEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_zQO7A_OmEeGbnfJ89GcO6g" name="died" type="_wy5V4POmEeGbnfJ89GcO6g" association="_zQOT8POmEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_zQO7BPOmEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_zQO7BfOmEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_1BigkPOmEeGbnfJ89GcO6g" name="Sets user name for device" clientDependency="_9uIHBAswEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_12tOAPOmEeGbnfJ89GcO6g" name="A_&lt;useCase1>_&lt;player>" memberEnd="_12tOAfOmEeGbnfJ89GcO6g _12tOBPOmEeGbnfJ89GcO6g">
        <ownedEnd xmi:type="uml:Property" xmi:id="_12tOAfOmEeGbnfJ89GcO6g" name="useCase1" type="_1BigkPOmEeGbnfJ89GcO6g" association="_12tOAPOmEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_12tOAvOmEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_12tOA_OmEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_12tOBPOmEeGbnfJ89GcO6g" name="player" type="_PXSekPOiEeGbnfJ89GcO6g" association="_12tOAPOmEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_12tOBfOmEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_12tOBvOmEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_ZMVsMPhEEeGbtJOpBIKWtQ" name="Pass kill/death information"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_a95JYPhEEeGbtJOpBIKWtQ" name="" memberEnd="_a95JYfhEEeGbtJOpBIKWtQ _a95JZPhEEeGbtJOpBIKWtQ">
        <ownedEnd xmi:type="uml:Property" xmi:id="_a95JYfhEEeGbtJOpBIKWtQ" name="device" type="_ApibQPOjEeGbnfJ89GcO6g" association="_a95JYPhEEeGbtJOpBIKWtQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_a95JYvhEEeGbtJOpBIKWtQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_a95JY_hEEeGbtJOpBIKWtQ" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_a95JZPhEEeGbtJOpBIKWtQ" name="useCase1" type="_ZMVsMPhEEeGbtJOpBIKWtQ" association="_a95JYPhEEeGbtJOpBIKWtQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_a95JZfhEEeGbtJOpBIKWtQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_a95JZvhEEeGbtJOpBIKWtQ" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_2Jew8PhEEeGbtJOpBIKWtQ" name="Send NFC signals for death"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_6DDqkPhEEeGbtJOpBIKWtQ" name="Wait for NFC interaction with other devices"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_8y-0gPhEEeGbtJOpBIKWtQ" name="Toggle NFC awareness on and off"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_BPIPtvhFEeGbtJOpBIKWtQ" name="A_&lt;device>_&lt;wait for NFC interaction with other devices>" memberEnd="_BPIPt_hFEeGbtJOpBIKWtQ _BPIPuvhFEeGbtJOpBIKWtQ">
        <ownedEnd xmi:type="uml:Property" xmi:id="_BPIPt_hFEeGbtJOpBIKWtQ" name="device" type="_ApibQPOjEeGbnfJ89GcO6g" association="_BPIPtvhFEeGbtJOpBIKWtQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_BPIPuPhFEeGbtJOpBIKWtQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_BPIPufhFEeGbtJOpBIKWtQ" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_BPIPuvhFEeGbtJOpBIKWtQ" name="wait for NFC interaction with other devices" type="_6DDqkPhEEeGbtJOpBIKWtQ" association="_BPIPtvhFEeGbtJOpBIKWtQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_BPIPu_hFEeGbtJOpBIKWtQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_BPIPvPhFEeGbtJOpBIKWtQ" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_CB6XhvhFEeGbtJOpBIKWtQ" name="A_&lt;device>_&lt;toggle NFC awareness on and off>" memberEnd="_CB6Xh_hFEeGbtJOpBIKWtQ _CB6XivhFEeGbtJOpBIKWtQ">
        <ownedEnd xmi:type="uml:Property" xmi:id="_CB6Xh_hFEeGbtJOpBIKWtQ" name="device" type="_ApibQPOjEeGbnfJ89GcO6g" association="_CB6XhvhFEeGbtJOpBIKWtQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_CB6XiPhFEeGbtJOpBIKWtQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_CB6XifhFEeGbtJOpBIKWtQ" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_CB6XivhFEeGbtJOpBIKWtQ" name="toggle NFC awareness on and off" type="_8y-0gPhEEeGbtJOpBIKWtQ" association="_CB6XhvhFEeGbtJOpBIKWtQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_CB6Xi_hFEeGbtJOpBIKWtQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_CB6XjPhFEeGbtJOpBIKWtQ" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_C0V6APhFEeGbtJOpBIKWtQ" name="A_&lt;device>_&lt;send NFC signals for death>" memberEnd="_C0V6AfhFEeGbtJOpBIKWtQ _C0V6BPhFEeGbtJOpBIKWtQ">
        <ownedEnd xmi:type="uml:Property" xmi:id="_C0V6AfhFEeGbtJOpBIKWtQ" name="device" type="_ApibQPOjEeGbnfJ89GcO6g" association="_C0V6APhFEeGbtJOpBIKWtQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_C0V6AvhFEeGbtJOpBIKWtQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_C0V6A_hFEeGbtJOpBIKWtQ" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_C0V6BPhFEeGbtJOpBIKWtQ" name="send NFC signals for death" type="_2Jew8PhEEeGbtJOpBIKWtQ" association="_C0V6APhFEeGbtJOpBIKWtQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_C0V6BfhFEeGbtJOpBIKWtQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_C0V6BvhFEeGbtJOpBIKWtQ" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_Zp4uYPhFEeGbtJOpBIKWtQ" name="Dependency1" supplier="_PXSekPOiEeGbnfJ89GcO6g" client="_ApibQPOjEeGbnfJ89GcO6g"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_pDlcQPhFEeGbtJOpBIKWtQ" name="UseCase1"/>
      <packagedElement xmi:type="uml:Actor" xmi:id="_U7ur4AaYEeKDzqAuHGoRIA" name="Defender"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_uXt-EAaYEeKDzqAuHGoRIA" name="Pass history to attacking device" memberEnd="_uXt-EQaYEeKDzqAuHGoRIA _uXt-FAaYEeKDzqAuHGoRIA">
        <ownedEnd xmi:type="uml:Property" xmi:id="_uXt-EQaYEeKDzqAuHGoRIA" name="enemy Device" type="_U7ur4AaYEeKDzqAuHGoRIA" association="_uXt-EAaYEeKDzqAuHGoRIA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_uXt-EgaYEeKDzqAuHGoRIA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_uXt-EwaYEeKDzqAuHGoRIA" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_uXt-FAaYEeKDzqAuHGoRIA" name="pass kill/death information" type="_ZMVsMPhEEeGbtJOpBIKWtQ" association="_uXt-EAaYEeKDzqAuHGoRIA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_uXt-FQaYEeKDzqAuHGoRIA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_uXt-FgaYEeKDzqAuHGoRIA" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_5vd5cAaYEeKDzqAuHGoRIA" name="Tags enemy device" clientDependency="_9htcAAaYEeKDzqAuHGoRIA"/>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_9htcAAaYEeKDzqAuHGoRIA" name="Dependency2" supplier="_sSRxwPOjEeGbnfJ89GcO6g" client="_5vd5cAaYEeKDzqAuHGoRIA"/>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_-IGGkAaYEeKDzqAuHGoRIA" name="Dependency3" supplier="_5vd5cAaYEeKDzqAuHGoRIA" client="_zMkqYPOjEeGbnfJ89GcO6g"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_DvJOoAaZEeKDzqAuHGoRIA" name="" memberEnd="_DvJOoQaZEeKDzqAuHGoRIA _DvJOpAaZEeKDzqAuHGoRIA">
        <ownedEnd xmi:type="uml:Property" xmi:id="_DvJOoQaZEeKDzqAuHGoRIA" name="enemy Device" type="_U7ur4AaYEeKDzqAuHGoRIA" association="_DvJOoAaZEeKDzqAuHGoRIA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_DvJOogaZEeKDzqAuHGoRIA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_DvJOowaZEeKDzqAuHGoRIA" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_DvJOpAaZEeKDzqAuHGoRIA" name="alert on being attacked" type="_zMkqYPOjEeGbnfJ89GcO6g" association="_DvJOoAaZEeKDzqAuHGoRIA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_DvJOpQaZEeKDzqAuHGoRIA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_DvJOpgaZEeKDzqAuHGoRIA" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_GFwgsAaZEeKDzqAuHGoRIA" name="Victim is disabled" memberEnd="_GFwgsQaZEeKDzqAuHGoRIA _GFwgtAaZEeKDzqAuHGoRIA">
        <ownedEnd xmi:type="uml:Property" xmi:id="_GFwgsQaZEeKDzqAuHGoRIA" name="isDead" type="_wy5V4POmEeGbnfJ89GcO6g" association="_GFwgsAaZEeKDzqAuHGoRIA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_GFwgsgaZEeKDzqAuHGoRIA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_GFwgswaZEeKDzqAuHGoRIA" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_GFwgtAaZEeKDzqAuHGoRIA" name="victim" type="_9hRp0POiEeGbnfJ89GcO6g" association="_GFwgsAaZEeKDzqAuHGoRIA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_GFwgtQaZEeKDzqAuHGoRIA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_GFwgtgaZEeKDzqAuHGoRIA" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_KiP6IAaZEeKDzqAuHGoRIA" name="Dependency4" supplier="_zMkqYPOjEeGbnfJ89GcO6g" client="_wy5V4POmEeGbnfJ89GcO6g"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_n8KacAaZEeKDzqAuHGoRIA" name="Enter Options Menu">
        <generalization xmi:type="uml:Generalization" xmi:id="_rb4CkAaZEeKDzqAuHGoRIA" general="_QAp5wPOkEeGbnfJ89GcO6g"/>
        <generalization xmi:type="uml:Generalization" xmi:id="_rz_noAaZEeKDzqAuHGoRIA" general="_1BigkPOmEeGbnfJ89GcO6g"/>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_pciBAAaZEeKDzqAuHGoRIA" name="" memberEnd="_pciBAQaZEeKDzqAuHGoRIA _pciBBAaZEeKDzqAuHGoRIA">
        <ownedEnd xmi:type="uml:Property" xmi:id="_pciBAQaZEeKDzqAuHGoRIA" name="enters information menu" type="_n8KacAaZEeKDzqAuHGoRIA" association="_pciBAAaZEeKDzqAuHGoRIA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_pciBAgaZEeKDzqAuHGoRIA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_pciBAwaZEeKDzqAuHGoRIA" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_pciBBAaZEeKDzqAuHGoRIA" name="player" type="_PXSekPOiEeGbnfJ89GcO6g" association="_pciBAAaZEeKDzqAuHGoRIA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_pciBBQaZEeKDzqAuHGoRIA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_pciBBgaZEeKDzqAuHGoRIA" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_3toIEAaZEeKDzqAuHGoRIA" name="Device stops listening for attacks" memberEnd="_3toIEQaZEeKDzqAuHGoRIA _3toIFAaZEeKDzqAuHGoRIA">
        <ownedEnd xmi:type="uml:Property" xmi:id="_3toIEQaZEeKDzqAuHGoRIA" name="device" type="_ApibQPOjEeGbnfJ89GcO6g" association="_3toIEAaZEeKDzqAuHGoRIA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_3toIEgaZEeKDzqAuHGoRIA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_3toIEwaZEeKDzqAuHGoRIA" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_3toIFAaZEeKDzqAuHGoRIA" name="exits game and leaves &quot;ready&quot; mode" type="_yj4AwPOlEeGbnfJ89GcO6g" association="_3toIEAaZEeKDzqAuHGoRIA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_3toIFQaZEeKDzqAuHGoRIA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_3toIFgaZEeKDzqAuHGoRIA" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Actor" xmi:id="_mQvBwAsrEeKT3eejSMU6Og" name="Server"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_b-5JEAssEeKT3eejSMU6Og" name="Browse Games" clientDependency="_lbiXwAsuEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_dDjrEAssEeKT3eejSMU6Og" name="Create Game"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_dhkcwAssEeKT3eejSMU6Og" name="Join Game" clientDependency="_Kj_RFAsvEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_ehu5QAssEeKT3eejSMU6Og" name="Create Game" clientDependency="_U-10dAsxEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:Association" xmi:id="__WE5FgssEeKT3eejSMU6Og" name="" memberEnd="__WE5FwssEeKT3eejSMU6Og __WE5GgssEeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="__WE5FwssEeKT3eejSMU6Og" name="browse Games" type="_b-5JEAssEeKT3eejSMU6Og" association="__WE5FgssEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="__WE5GAssEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="__WE5GQssEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="__WE5GgssEeKT3eejSMU6Og" name="server" type="_mQvBwAsrEeKT3eejSMU6Og" association="__WE5FgssEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="__WE5GwssEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="__WE5HAssEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_AKCsoAstEeKT3eejSMU6Og" name="" memberEnd="_AKCsoQstEeKT3eejSMU6Og _AKCspAstEeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="_AKCsoQstEeKT3eejSMU6Og" name="browse Games" type="_mQvBwAsrEeKT3eejSMU6Og" association="_AKCsoAstEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_AKCsogstEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_AKCsowstEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_AKCspAstEeKT3eejSMU6Og" name="join Game" type="_dhkcwAssEeKT3eejSMU6Og" association="_AKCsoAstEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_AKCspQstEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_AKCspgstEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_EXIYJgstEeKT3eejSMU6Og" name="A_&lt;create Game>_&lt;server>" memberEnd="_EXIYJwstEeKT3eejSMU6Og _EXIYKgstEeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="_EXIYJwstEeKT3eejSMU6Og" name="create Game" type="_dDjrEAssEeKT3eejSMU6Og" association="_EXIYJgstEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_EXIYKAstEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_EXIYKQstEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_EXIYKgstEeKT3eejSMU6Og" name="server" type="_mQvBwAsrEeKT3eejSMU6Og" association="_EXIYJgstEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_EXIYKwstEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_EXIYLAstEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_Z3bbZgsuEeKT3eejSMU6Og" name="A_&lt;device>_&lt;browse Games>" memberEnd="_Z3bbZwsuEeKT3eejSMU6Og _Z3bbagsuEeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="_Z3bbZwsuEeKT3eejSMU6Og" name="device" type="_ApibQPOjEeGbnfJ89GcO6g" association="_Z3bbZgsuEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_Z3bbaAsuEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_Z3bbaQsuEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_Z3bbagsuEeKT3eejSMU6Og" name="browse Games" type="_b-5JEAssEeKT3eejSMU6Og" association="_Z3bbZgsuEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_Z3bbawsuEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_Z3bbbAsuEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_lbiXwAsuEeKT3eejSMU6Og" name="Dependency5" supplier="_dhkcwAssEeKT3eejSMU6Og" client="_b-5JEAssEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_Kj_RFAsvEeKT3eejSMU6Og" name="Dependency6" supplier="_b-5JEAssEeKT3eejSMU6Og" client="_dhkcwAssEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_guyfVgsvEeKT3eejSMU6Og" name="Notify server of kill" memberEnd="_guyfVwsvEeKT3eejSMU6Og _guyfWgsvEeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="_guyfVwsvEeKT3eejSMU6Og" name="notification on being attacked" type="_zMkqYPOjEeGbnfJ89GcO6g" association="_guyfVgsvEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_guyfWAsvEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_guyfWQsvEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_guyfWgsvEeKT3eejSMU6Og" name="server" type="_mQvBwAsrEeKT3eejSMU6Og" association="_guyfVgsvEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_guyfWwsvEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_guyfXAsvEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_-UbuhAsvEeKT3eejSMU6Og" name="Dependency7" supplier="_U7ur4AaYEeKDzqAuHGoRIA" client="_wy5V4POmEeGbnfJ89GcO6g"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_Ar4uFgswEeKT3eejSMU6Og" name="" memberEnd="_Ar4uFwswEeKT3eejSMU6Og _Ar4uGgswEeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="_Ar4uFwswEeKT3eejSMU6Og" name="device is disabled for fixed time period" type="_wy5V4POmEeGbnfJ89GcO6g" association="_Ar4uFgswEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_Ar4uGAswEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_Ar4uGQswEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_Ar4uGgswEeKT3eejSMU6Og" name="victim's Device" type="_U7ur4AaYEeKDzqAuHGoRIA" association="_Ar4uFgswEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_Ar4uGwswEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_Ar4uHAswEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_wCZ94AswEeKT3eejSMU6Og" name="Toggle Audio Notification" clientDependency="_7UKmBAswEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_wqn0cAswEeKT3eejSMU6Og" name="Set Notification Options"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_2umwIAswEeKT3eejSMU6Og" name="Toggle Popup Notification" clientDependency="_74pzIAswEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_7UKmBAswEeKT3eejSMU6Og" name="Dependency8" supplier="_n8KacAaZEeKDzqAuHGoRIA" client="_wCZ94AswEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_74pzIAswEeKT3eejSMU6Og" name="Dependency9" supplier="_n8KacAaZEeKDzqAuHGoRIA" client="_2umwIAswEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_9uIHBAswEeKT3eejSMU6Og" name="Dependency10" supplier="_n8KacAaZEeKDzqAuHGoRIA" client="_1BigkPOmEeGbnfJ89GcO6g"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_Npia0AsxEeKT3eejSMU6Og" name="" memberEnd="_Npia0QsxEeKT3eejSMU6Og _Npia1AsxEeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="_Npia0QsxEeKT3eejSMU6Og" name="player" type="_PXSekPOiEeGbnfJ89GcO6g" association="_Npia0AsxEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_Npia0gsxEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_Npia0wsxEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_Npia1AsxEeKT3eejSMU6Og" name="browse Games" type="_b-5JEAssEeKT3eejSMU6Og" association="_Npia0AsxEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_Npia1QsxEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_Npia1gsxEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_T1aHMAsxEeKT3eejSMU6Og" name="Player tells server to make new game"/>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_U-10dAsxEeKT3eejSMU6Og" name="Dependency11" supplier="_b-5JEAssEeKT3eejSMU6Og" client="_ehu5QAssEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_edoDEAsxEeKT3eejSMU6Og" name="View Scores"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_gfi3gAsxEeKT3eejSMU6Og" name="" memberEnd="_gfi3gQsxEeKT3eejSMU6Og _gfi3hAsxEeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="_gfi3gQsxEeKT3eejSMU6Og" name="player" type="_PXSekPOiEeGbnfJ89GcO6g" association="_gfi3gAsxEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_gfi3ggsxEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_gfi3gwsxEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_gfi3hAsxEeKT3eejSMU6Og" name="view Scores" type="_edoDEAsxEeKT3eejSMU6Og" association="_gfi3gAsxEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_gfi3hQsxEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_gfi3hgsxEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_kkprtAsxEeKT3eejSMU6Og" name="Dependency12" supplier="_edoDEAsxEeKT3eejSMU6Og" client="_QAp5wPOkEeGbnfJ89GcO6g"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_lMknUAsxEeKT3eejSMU6Og" name="Game Stats" clientDependency="_niZ2RAsxEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_niZ2RAsxEeKT3eejSMU6Og" name="Dependency13" supplier="_edoDEAsxEeKT3eejSMU6Og" client="_lMknUAsxEeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_Fzk5RAszEeKT3eejSMU6Og" name="Device acknowledges attack" supplier="_5vd5cAaYEeKDzqAuHGoRIA" client="_zMkqYPOjEeGbnfJ89GcO6g"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_is0VcAszEeKT3eejSMU6Og" name="" memberEnd="_is0VcQszEeKT3eejSMU6Og _is0VdAszEeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="_is0VcQszEeKT3eejSMU6Og" name="server" type="_mQvBwAsrEeKT3eejSMU6Og" association="_is0VcAszEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_is0VcgszEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_is0VcwszEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_is0VdAszEeKT3eejSMU6Og" name="create Game" type="_ehu5QAssEeKT3eejSMU6Og" association="_is0VcAszEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_is0VdQszEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_is0VdgszEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_ogzGRgszEeKT3eejSMU6Og" name="" memberEnd="_ogzGRwszEeKT3eejSMU6Og _ogzGSgszEeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="_ogzGRwszEeKT3eejSMU6Og" name="leave Game" type="_yj4AwPOlEeGbnfJ89GcO6g" association="_ogzGRgszEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_ogzGSAszEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_ogzGSQszEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_ogzGSgszEeKT3eejSMU6Og" name="server" type="_mQvBwAsrEeKT3eejSMU6Og" association="_ogzGRgszEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_ogzGSwszEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_ogzGTAszEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_wir5EAszEeKT3eejSMU6Og" name="" memberEnd="_wir5EQszEeKT3eejSMU6Og _wir5FAszEeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="_wir5EQszEeKT3eejSMU6Og" name="player" type="_PXSekPOiEeGbnfJ89GcO6g" association="_wir5EAszEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_wir5EgszEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_wir5EwszEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_wir5FAszEeKT3eejSMU6Og" name="join Game" type="_dhkcwAssEeKT3eejSMU6Og" association="_wir5EAszEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_wir5FQszEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_wir5FgszEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_xLhatgszEeKT3eejSMU6Og" name="" memberEnd="_xLhatwszEeKT3eejSMU6Og _xLhaugszEeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="_xLhatwszEeKT3eejSMU6Og" name="player" type="_PXSekPOiEeGbnfJ89GcO6g" association="_xLhatgszEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_xLhauAszEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_xLhauQszEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_xLhaugszEeKT3eejSMU6Og" name="create Game" type="_ehu5QAssEeKT3eejSMU6Og" association="_xLhatgszEeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_xLhauwszEeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_xLhavAszEeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_ApNQsAs0EeKT3eejSMU6Og" name="Clear History" clientDependency="_Dygj8As0EeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_CH4OJgs0EeKT3eejSMU6Og" name="A_&lt;enter Options Menu>_&lt;clear History>" memberEnd="_CH4OJws0EeKT3eejSMU6Og _CH4OKgs0EeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="_CH4OJws0EeKT3eejSMU6Og" name="enter Options Menu" type="_n8KacAaZEeKDzqAuHGoRIA" association="_CH4OJgs0EeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_CH4OKAs0EeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_CH4OKQs0EeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_CH4OKgs0EeKT3eejSMU6Og" name="clear History" type="_ApNQsAs0EeKT3eejSMU6Og" association="_CH4OJgs0EeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_CH4OKws0EeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_CH4OLAs0EeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Dependency" xmi:id="_Dygj8As0EeKT3eejSMU6Og" name="Dependency14" supplier="_n8KacAaZEeKDzqAuHGoRIA" client="_ApNQsAs0EeKT3eejSMU6Og"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_zBYeMAs1EeKT3eejSMU6Og" name="Send Score Info" memberEnd="_zBYeMQs1EeKT3eejSMU6Og _zBYeNAs1EeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="_zBYeMQs1EeKT3eejSMU6Og" name="view Scores" type="_edoDEAsxEeKT3eejSMU6Og" association="_zBYeMAs1EeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_zBYeMgs1EeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_zBYeMws1EeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_zBYeNAs1EeKT3eejSMU6Og" name="server" type="_mQvBwAsrEeKT3eejSMU6Og" association="_zBYeMAs1EeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_zBYeNQs1EeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_zBYeNgs1EeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Actor" xmi:id="_CGs3gAs2EeKT3eejSMU6Og" name="Defender"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_DJS88As2EeKT3eejSMU6Og" name="Activate Defense Mode"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_MjAeVgs2EeKT3eejSMU6Og" name="" memberEnd="_MjAeVws2EeKT3eejSMU6Og _MjAeWgs2EeKT3eejSMU6Og">
        <ownedEnd xmi:type="uml:Property" xmi:id="_MjAeVws2EeKT3eejSMU6Og" name="defender" type="_U7ur4AaYEeKDzqAuHGoRIA" association="_MjAeVgs2EeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_MjAeWAs2EeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_MjAeWQs2EeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_MjAeWgs2EeKT3eejSMU6Og" name="activate Defense Mode" type="_DJS88As2EeKT3eejSMU6Og" association="_MjAeVgs2EeKT3eejSMU6Og">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_MjAeWws2EeKT3eejSMU6Og" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_MjAeXAs2EeKT3eejSMU6Og" value="1"/>
        </ownedEnd>
      </packagedElement>
    </packagedElement>
  </packagedElement>
  <profileApplication xmi:type="uml:ProfileApplication" xmi:id="idProfileApplication">
    <eAnnotations xmi:type="ecore:EAnnotation" xmi:id="idProfileAnnotation" source="http://www.eclipse.org/uml2/2.0.0/UML">
      <references xmi:type="ecore:EPackage" href="pathmap://SysMLActivityExtensionsProfile.uml#ProfileContentId"/>
    </eAnnotations>
    <appliedProfile xmi:type="uml:Profile" href="pathmap://SysMLActivityExtensionsProfile.uml#ActivityProfileId"/>
  </profileApplication>
</uml:Model>
