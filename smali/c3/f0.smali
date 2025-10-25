.class public final synthetic Lc3/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/f0;->a:Lc3/b$a;

    iput p2, p0, Lc3/f0;->b:I

    iput p3, p0, Lc3/f0;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc3/f0;->a:Lc3/b$a;

    iget v1, p0, Lc3/f0;->b:I

    iget v2, p0, Lc3/f0;->c:I

    check-cast p1, Lc3/b;

    invoke-static {v0, v1, v2, p1}, Lc3/n1;->f0(Lc3/b$a;IILc3/b;)V

    return-void
.end method
