.class Ly7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly7/i;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Lq7/i0;)Ly7/d;
    .locals 14

    .line 1
    const/4 v5, 0x0

    .line 2
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    .line 3
    .line 4
    const-wide v9, 0x3ff3333333333333L    # 1.2

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const/16 v11, 0x3c

    .line 10
    .line 11
    new-instance v3, Ly7/d$b;

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-direct {v3, v0, v1}, Ly7/d$b;-><init>(II)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Ly7/d$a;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v4, v0, v1, v1}, Ly7/d$a;-><init>(ZZZ)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Lq7/i0;->a()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    const p0, 0x36ee80

    .line 31
    .line 32
    .line 33
    int-to-long v12, p0

    .line 34
    add-long v1, v0, v12

    .line 35
    .line 36
    new-instance p0, Ly7/d;

    .line 37
    .line 38
    const/16 v6, 0xe10

    .line 39
    .line 40
    move-object v0, p0

    .line 41
    invoke-direct/range {v0 .. v11}, Ly7/d;-><init>(JLy7/d$b;Ly7/d$a;IIDDI)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method


# virtual methods
.method public a(Lq7/i0;Lorg/json/JSONObject;)Ly7/d;
    .locals 0

    .line 1
    invoke-static {p1}, Ly7/b;->b(Lq7/i0;)Ly7/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
