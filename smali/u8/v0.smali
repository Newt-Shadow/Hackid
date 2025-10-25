.class public final Lu8/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu8/v0$a;,
        Lu8/v0$b;
    }
.end annotation


# static fields
.field public static final Companion:Lu8/v0$b;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu8/v0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu8/v0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu8/v0;->Companion:Lu8/v0$b;

    return-void
.end method

.method public synthetic constructor <init>(IJJJLie/y;)V
    .locals 1

    and-int/lit8 p8, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p8, :cond_0

    .line 1
    sget-object p8, Lu8/v0$a;->a:Lu8/v0$a;

    invoke-virtual {p8}, Lu8/v0$a;->a()Lge/d;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lie/o;->a(IILge/d;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lu8/v0;->a:J

    and-int/lit8 p8, p1, 0x2

    const/16 v0, 0x3e8

    if-nez p8, :cond_1

    int-to-long p4, v0

    mul-long/2addr p4, p2

    :cond_1
    iput-wide p4, p0, Lu8/v0;->b:J

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    int-to-long p4, v0

    .line 2
    div-long/2addr p2, p4

    .line 3
    iput-wide p2, p0, Lu8/v0;->c:J

    goto :goto_0

    :cond_2
    iput-wide p6, p0, Lu8/v0;->c:J

    :goto_0
    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lu8/v0;->a:J

    const/16 v0, 0x3e8

    int-to-long v0, v0

    mul-long v2, p1, v0

    .line 5
    iput-wide v2, p0, Lu8/v0;->b:J

    .line 6
    div-long/2addr p1, v0

    iput-wide p1, p0, Lu8/v0;->c:J

    return-void
.end method

.method public static final synthetic d(Lu8/v0;Lhe/d;Lge/d;)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lu8/v0;->a:J

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-interface {p1, p2, v2, v0, v1}, Lhe/d;->q(Lge/d;IJ)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-interface {p1, p2, v0}, Lhe/d;->m(Lge/d;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v3, 0x3e8

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    :goto_0
    move v1, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-wide v4, p0, Lu8/v0;->b:J

    .line 19
    .line 20
    iget-wide v6, p0, Lu8/v0;->a:J

    .line 21
    .line 22
    int-to-long v8, v3

    .line 23
    mul-long/2addr v6, v8

    .line 24
    cmp-long v1, v4, v6

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_1
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-wide v4, p0, Lu8/v0;->b:J

    .line 33
    .line 34
    invoke-interface {p1, p2, v0, v4, v5}, Lhe/d;->q(Lge/d;IJ)V

    .line 35
    .line 36
    .line 37
    :cond_2
    const/4 v1, 0x2

    .line 38
    invoke-interface {p1, p2, v1}, Lhe/d;->m(Lge/d;I)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    :goto_2
    move v2, v0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    iget-wide v4, p0, Lu8/v0;->c:J

    .line 47
    .line 48
    iget-wide v6, p0, Lu8/v0;->a:J

    .line 49
    .line 50
    int-to-long v8, v3

    .line 51
    div-long/2addr v6, v8

    .line 52
    cmp-long v3, v4, v6

    .line 53
    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 58
    .line 59
    iget-wide v2, p0, Lu8/v0;->c:J

    .line 60
    .line 61
    invoke-interface {p1, p2, v1, v2, v3}, Lhe/d;->q(Lge/d;IJ)V

    .line 62
    .line 63
    .line 64
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu8/v0;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu8/v0;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c(Lu8/v0;)J
    .locals 4

    .line 1
    const-string v0, "time"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lsd/a;->b:Lsd/a$a;

    .line 7
    .line 8
    iget-wide v0, p0, Lu8/v0;->a:J

    .line 9
    .line 10
    iget-wide v2, p1, Lu8/v0;->a:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    sget-object p1, Lsd/d;->d:Lsd/d;

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Lsd/c;->i(JLsd/d;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu8/v0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lu8/v0;

    iget-wide v3, p0, Lu8/v0;->a:J

    iget-wide v5, p1, Lu8/v0;->a:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lu8/v0;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time(ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lu8/v0;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
