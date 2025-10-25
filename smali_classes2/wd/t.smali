.class public abstract Lwd/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyd/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyd/f0;

    .line 2
    .line 3
    const-string v1, "NO_VALUE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lwd/t;->a:Lyd/f0;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Lwd/s;Lad/i;ILvd/a;)Lwd/d;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, -0x3

    .line 4
    if-ne p2, v0, :cond_1

    .line 5
    .line 6
    :cond_0
    sget-object v0, Lvd/a;->a:Lvd/a;

    .line 7
    .line 8
    if-ne p3, v0, :cond_1

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_1
    new-instance v0, Lxd/h;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lxd/h;-><init>(Lwd/d;Lad/i;ILvd/a;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
