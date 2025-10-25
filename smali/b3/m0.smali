.class public final synthetic Lb3/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lb3/m3$e;

.field public final synthetic c:Lb3/m3$e;


# direct methods
.method public synthetic constructor <init>(ILb3/m3$e;Lb3/m3$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb3/m0;->a:I

    iput-object p2, p0, Lb3/m0;->b:Lb3/m3$e;

    iput-object p3, p0, Lb3/m0;->c:Lb3/m3$e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lb3/m0;->a:I

    iget-object v1, p0, Lb3/m0;->b:Lb3/m3$e;

    iget-object v2, p0, Lb3/m0;->c:Lb3/m3$e;

    check-cast p1, Lb3/m3$d;

    invoke-static {v0, v1, v2, p1}, Lb3/g1;->b0(ILb3/m3$e;Lb3/m3$e;Lb3/m3$d;)V

    return-void
.end method
