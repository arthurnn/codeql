// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.decl.VarDecl

class RebindSelfInConstructorExprBase extends Synth::TRebindSelfInConstructorExpr, Expr {
  override string getAPrimaryQlClass() { result = "RebindSelfInConstructorExpr" }

  Expr getImmediateSubExpr() {
    result =
      Synth::convertExprFromRaw(Synth::convertRebindSelfInConstructorExprToRaw(this)
            .(Raw::RebindSelfInConstructorExpr)
            .getSubExpr())
  }

  final Expr getSubExpr() { result = getImmediateSubExpr().resolve() }

  VarDecl getImmediateSelf() {
    result =
      Synth::convertVarDeclFromRaw(Synth::convertRebindSelfInConstructorExprToRaw(this)
            .(Raw::RebindSelfInConstructorExpr)
            .getSelf())
  }

  final VarDecl getSelf() { result = getImmediateSelf().resolve() }
}
