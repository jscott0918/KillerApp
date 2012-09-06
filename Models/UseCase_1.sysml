<?xml version="1.0" encoding="UTF-8"?>
<uml:Model xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:sysML="http://www.topcased.org/2.0/sysML" xmlns:uml="http://www.eclipse.org/uml2/3.0.0/UML" xmi:id="idModel" name="UseCase_1">
  <packagedElement xmi:type="uml:Package" xmi:id="idPackage" name="UseCase_1">
    <packagedElement xmi:type="sysML:View" xmi:id="_NB-NAPOiEeGbnfJ89GcO6g" name="View1">
      <packagedElement xmi:type="uml:Actor" xmi:id="_PXSekPOiEeGbnfJ89GcO6g" name="Player"/>
      <packagedElement xmi:type="uml:Actor" xmi:id="_4aPekPOiEeGbnfJ89GcO6g" name="Attacker">
        <generalization xmi:type="uml:Generalization" xmi:id="_m9AWMPOjEeGbnfJ89GcO6g" general="_PXSekPOiEeGbnfJ89GcO6g"/>
      </packagedElement>
      <packagedElement xmi:type="uml:Actor" xmi:id="_9hRp0POiEeGbnfJ89GcO6g" name="Defender">
        <generalization xmi:type="uml:Generalization" xmi:id="_nsVhYPOjEeGbnfJ89GcO6g" general="_PXSekPOiEeGbnfJ89GcO6g"/>
      </packagedElement>
      <packagedElement xmi:type="uml:Actor" xmi:id="_ApibQPOjEeGbnfJ89GcO6g" name="Device" clientDependency="_Zp4uYPhFEeGbtJOpBIKWtQ"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_VNQ-APOjEeGbnfJ89GcO6g" name="Join Game"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_qywfwPOjEeGbnfJ89GcO6g" name="A_&lt;player>_&lt;join Game>" memberEnd="_qywfwfOjEeGbnfJ89GcO6g _qywfxPOjEeGbnfJ89GcO6g">
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
      <packagedElement xmi:type="uml:Association" xmi:id="_xkhHcPOjEeGbnfJ89GcO6g" name="A_&lt;attacker>_&lt;enter attack mode>" memberEnd="_xkhHcfOjEeGbnfJ89GcO6g _xkhHdPOjEeGbnfJ89GcO6g">
        <ownedEnd xmi:type="uml:Property" xmi:id="_xkhHcfOjEeGbnfJ89GcO6g" name="attacker" type="_4aPekPOiEeGbnfJ89GcO6g" association="_xkhHcPOjEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_xkhHcvOjEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_xkhHc_OjEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_xkhHdPOjEeGbnfJ89GcO6g" name="enter attack mode" type="_sSRxwPOjEeGbnfJ89GcO6g" association="_xkhHcPOjEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_xkhHdfOjEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_xkhHdvOjEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_zMkqYPOjEeGbnfJ89GcO6g" name="Alert on being attacked"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_3DIsQPOjEeGbnfJ89GcO6g" name="A_&lt;defender>_&lt;alert on being attacked>" memberEnd="_3DJTUPOjEeGbnfJ89GcO6g _3DJTU_OjEeGbnfJ89GcO6g">
        <ownedEnd xmi:type="uml:Property" xmi:id="_3DJTUPOjEeGbnfJ89GcO6g" name="defender" type="_9hRp0POiEeGbnfJ89GcO6g" association="_3DIsQPOjEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_3DJTUfOjEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_3DJTUvOjEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_3DJTU_OjEeGbnfJ89GcO6g" name="alert on being attacked" type="_zMkqYPOjEeGbnfJ89GcO6g" association="_3DIsQPOjEeGbnfJ89GcO6g">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_3DJTVPOjEeGbnfJ89GcO6g" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_3DJTVfOjEeGbnfJ89GcO6g" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_QAp5wPOkEeGbnfJ89GcO6g" name="Check kills/deaths"/>
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
      <packagedElement xmi:type="uml:UseCase" xmi:id="_VAEaEPOkEeGbnfJ89GcO6g" name="Alert on kill/killed"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_ew6CAPOkEeGbnfJ89GcO6g" name="A_&lt;device>_&lt;alert on kill/killed>" memberEnd="_ew6CAfOkEeGbnfJ89GcO6g _ew6CBPOkEeGbnfJ89GcO6g">
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
      <packagedElement xmi:type="uml:Association" xmi:id="_3RDhkPOlEeGbnfJ89GcO6g" name="A_&lt;leave Game>_&lt;player>" memberEnd="_3RDhkfOlEeGbnfJ89GcO6g _3RDhlPOlEeGbnfJ89GcO6g">
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
      <packagedElement xmi:type="uml:UseCase" xmi:id="_wy5V4POmEeGbnfJ89GcO6g" name="isDead"/>
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
      <packagedElement xmi:type="uml:UseCase" xmi:id="_1BigkPOmEeGbnfJ89GcO6g" name="Set name of device/user for game"/>
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
      <packagedElement xmi:type="uml:Association" xmi:id="_a95JYPhEEeGbtJOpBIKWtQ" name="A_&lt;device>_&lt;useCase1>" memberEnd="_a95JYfhEEeGbtJOpBIKWtQ _a95JZPhEEeGbtJOpBIKWtQ">
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
    </packagedElement>
  </packagedElement>
  <profileApplication xmi:type="uml:ProfileApplication" xmi:id="idProfileApplication">
    <eAnnotations xmi:type="ecore:EAnnotation" xmi:id="idProfileAnnotation" source="http://www.eclipse.org/uml2/2.0.0/UML">
      <references xmi:type="ecore:EPackage" href="pathmap://SysMLActivityExtensionsProfile.uml#ProfileContentId"/>
    </eAnnotations>
    <appliedProfile xmi:type="uml:Profile" href="pathmap://SysMLActivityExtensionsProfile.uml#ActivityProfileId"/>
  </profileApplication>
</uml:Model>
