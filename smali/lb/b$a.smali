.class public final Llb/b$a;
.super Lne/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llb/b;->b(Lne/z;)Lne/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lne/z;

.field final synthetic c:Laf/d;


# direct methods
.method constructor <init>(Lne/z;Laf/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llb/b$a;->b:Lne/z;

    .line 2
    .line 3
    iput-object p2, p0, Llb/b$a;->c:Laf/d;

    .line 4
    .line 5
    invoke-direct {p0}, Lne/z;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Llb/b$a;->c:Laf/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Laf/d;->k0()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public b()Lne/v;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/b$a;->b:Lne/z;

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
    iget-object v0, p0, Llb/b$a;->c:Laf/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Laf/d;->A0()Laf/g;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p1, v0}, Laf/e;->s0(Laf/g;)Laf/e;

    .line 13
    .line 14
    .line 15
    return-void
.end method
