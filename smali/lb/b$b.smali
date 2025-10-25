.class public final Llb/b$b;
.super Lne/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llb/b;->c(Lne/z;)Lne/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lne/z;


# direct methods
.method constructor <init>(Lne/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llb/b$b;->b:Lne/z;

    .line 2
    .line 3
    invoke-direct {p0}, Lne/z;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public b()Lne/v;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/b$b;->b:Lne/z;

    .line 2
    .line 3
    invoke-virtual {v0}, Lne/z;->b()Lne/v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e(Laf/e;)V
    .locals 1

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Laf/o;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Laf/o;-><init>(Laf/y0;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Laf/m0;->a(Laf/y0;)Laf/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Llb/b$b;->b:Lne/z;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lne/z;->e(Laf/e;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Laf/y0;->close()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
