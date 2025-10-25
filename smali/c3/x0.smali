.class public final synthetic Lc3/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;

.field public final synthetic b:I

.field public final synthetic c:Lb3/m3$e;

.field public final synthetic d:Lb3/m3$e;


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;ILb3/m3$e;Lb3/m3$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/x0;->a:Lc3/b$a;

    iput p2, p0, Lc3/x0;->b:I

    iput-object p3, p0, Lc3/x0;->c:Lb3/m3$e;

    iput-object p4, p0, Lc3/x0;->d:Lb3/m3$e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc3/x0;->a:Lc3/b$a;

    iget v1, p0, Lc3/x0;->b:I

    iget-object v2, p0, Lc3/x0;->c:Lb3/m3$e;

    iget-object v3, p0, Lc3/x0;->d:Lb3/m3$e;

    check-cast p1, Lc3/b;

    invoke-static {v0, v1, v2, v3, p1}, Lc3/n1;->o0(Lc3/b$a;ILb3/m3$e;Lb3/m3$e;Lc3/b;)V

    return-void
.end method
