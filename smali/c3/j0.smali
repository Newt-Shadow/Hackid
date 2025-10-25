.class public final synthetic Lc3/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/j0;->a:Lc3/b$a;

    iput p2, p0, Lc3/j0;->b:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc3/j0;->a:Lc3/b$a;

    iget v1, p0, Lc3/j0;->b:F

    check-cast p1, Lc3/b;

    invoke-static {v0, v1, p1}, Lc3/n1;->V(Lc3/b$a;FLc3/b;)V

    return-void
.end method
