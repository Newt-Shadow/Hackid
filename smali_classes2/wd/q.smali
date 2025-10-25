.class final Lwd/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/u;
.implements Lwd/d;
.implements Lxd/k;


# instance fields
.field private final synthetic a:Lwd/u;

.field private final b:Ltd/t1;


# direct methods
.method public constructor <init>(Lwd/u;Ltd/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwd/q;->a:Lwd/u;

    .line 5
    .line 6
    iput-object p2, p0, Lwd/q;->b:Ltd/t1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lad/i;ILvd/a;)Lwd/d;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lwd/w;->d(Lwd/u;Lad/i;ILvd/a;)Lwd/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public collect(Lwd/e;Lad/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lwd/q;->a:Lwd/u;

    invoke-interface {v0, p1, p2}, Lwd/s;->collect(Lwd/e;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lwd/q;->a:Lwd/u;

    invoke-interface {v0}, Lwd/u;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
