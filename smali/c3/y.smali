.class public final synthetic Lc3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;

.field public final synthetic b:Lb3/f2;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;Lb3/f2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/y;->a:Lc3/b$a;

    iput-object p2, p0, Lc3/y;->b:Lb3/f2;

    iput p3, p0, Lc3/y;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc3/y;->a:Lc3/b$a;

    iget-object v1, p0, Lc3/y;->b:Lb3/f2;

    iget v2, p0, Lc3/y;->c:I

    check-cast p1, Lc3/b;

    invoke-static {v0, v1, v2, p1}, Lc3/n1;->a0(Lc3/b$a;Lb3/f2;ILc3/b;)V

    return-void
.end method
