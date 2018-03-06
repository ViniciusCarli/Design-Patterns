unit XmlReader;

interface

uses
  Dados, ReaderInterface, System.StrUtils, System.SysUtils, System.Classes, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  TXmlReader = class(TBBReader)
    function ShowOnGrid: string; override;
  end;

implementation

{ TXmlReader }

function TXmlReader.ShowOnGrid: string;
var
ChildNode : IXMLNode;
noderow : IXMLNode;
I : Integer;
begin
  FDados.XMLDocument1.LoadFromFile('C:\Users\Vinicius Bustamanti\Desktop\Design-Patterns\Cap 4 Factory Pattern\Factory Reader\Data\data.xml');
  noderow := FDados.XMLDocument1.ChildNodes.FindNode('root');
  ChildNode := noderow.childNodes[0];

  FDados.cds.CreateDataSet;

  for I := 0 to noderow.ChildNodes.Count -1 do
  begin
    if ChildNode.NodeName = 'row' then
    begin
      FDados.cds.Insert;

      FDados.cdsid.AsString := (ChildNode.ChildValues['id']);
      FDados.cdsfirst_name.AsString := (ChildNode.ChildValues['first_name']);
      FDados.cdslast_name.AsString := (ChildNode.ChildValues['last_name']);
      FDados.cdsemail.AsString := (ChildNode.ChildValues['email']);
      FDados.cdsgender.AsString := (ChildNode.ChildValues['gender']);
      FDados.cdsip_address.AsString := (ChildNode.ChildValues['ip_address']);

      FDados.cds.Post;
      ChildNode := ChildNode.nextSibling;
    end;
  end;

end;

end.

