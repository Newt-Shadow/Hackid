.class public abstract Lwd/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lyd/f0;

.field private static final b:Lyd/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyd/f0;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lwd/w;->a:Lyd/f0;

    .line 9
    .line 10
    new-instance v0, Lyd/f0;

    .line 11
    .line 12
    const-string v1, "PENDING"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lwd/w;->b:Lyd/f0;

    .line 18
    .line 19
    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lwd/p;
    .locals 1

    .line 1
    new-instance v0, Lwd/v;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lxd/m;->a:Lyd/f0;

    .line 6
    .line 7
    :cond_0
    invoke-direct {v0, p0}, Lwd/v;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static final synthetic b()Lyd/f0;
    .locals 1

    .line 1
    sget-object v0, Lwd/w;->a:Lyd/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Lyd/f0;
    .locals 1

    .line 1
    sget-object v0, Lwd/w;->b:Lyd/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final d(Lwd/u;Lad/i;ILvd/a;)Lwd/d;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p2, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-ge p2, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :cond_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, -0x2

    .line 11
    if-ne p2, v0, :cond_2

    .line 12
    .line 13
    :cond_1
    sget-object v0, Lvd/a;->b:Lvd/a;

    .line 14
    .line 15
    if-ne p3, v0, :cond_2

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lwd/t;->a(Lwd/s;Lad/i;ILvd/a;)Lwd/d;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
