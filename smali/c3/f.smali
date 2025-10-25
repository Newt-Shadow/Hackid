.class public final synthetic Lc3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/f;->a:Lc3/b$a;

    iput p2, p0, Lc3/f;->b:I

    iput-boolean p3, p0, Lc3/f;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc3/f;->a:Lc3/b$a;

    iget v1, p0, Lc3/f;->b:I

    iget-boolean v2, p0, Lc3/f;->c:Z

    check-cast p1, Lc3/b;

    invoke-static {v0, v1, v2, p1}, Lc3/n1;->L(Lc3/b$a;IZLc3/b;)V

    return-void
.end method
