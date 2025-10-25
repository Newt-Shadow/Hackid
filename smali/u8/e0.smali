.class public final Lu8/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu8/e0$a;,
        Lu8/e0$b;
    }
.end annotation


# static fields
.field public static final Companion:Lu8/e0$b;

.field private static final d:[Lee/b;


# instance fields
.field private final a:Lu8/h0;

.field private final b:Lu8/v0;

.field private final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lu8/e0$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lu8/e0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lu8/e0;->Companion:Lu8/e0$b;

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lee/b;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    new-instance v1, Lie/i;

    .line 19
    .line 20
    sget-object v2, Lie/z;->a:Lie/z;

    .line 21
    .line 22
    sget-object v3, Lu8/v$a;->a:Lu8/v$a;

    .line 23
    .line 24
    invoke-direct {v1, v2, v3}, Lie/i;-><init>(Lee/b;Lee/b;)V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sput-object v0, Lu8/e0;->d:[Lee/b;

    .line 31
    .line 32
    return-void
.end method

.method public synthetic constructor <init>(ILu8/h0;Lu8/v0;Ljava/util/Map;Lie/y;)V
    .locals 1

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p5, :cond_0

    .line 1
    sget-object p5, Lu8/e0$a;->a:Lu8/e0$a;

    invoke-virtual {p5}, Lu8/e0$a;->a()Lge/d;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lie/o;->a(IILge/d;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu8/e0;->a:Lu8/h0;

    and-int/lit8 p2, p1, 0x2

    const/4 p5, 0x0

    if-nez p2, :cond_1

    iput-object p5, p0, Lu8/e0;->b:Lu8/v0;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lu8/e0;->b:Lu8/v0;

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    iput-object p5, p0, Lu8/e0;->c:Ljava/util/Map;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lu8/e0;->c:Ljava/util/Map;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lu8/h0;Lu8/v0;Ljava/util/Map;)V
    .locals 1

    const-string v0, "sessionDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lu8/e0;->a:Lu8/h0;

    .line 4
    iput-object p2, p0, Lu8/e0;->b:Lu8/v0;

    .line 5
    iput-object p3, p0, Lu8/e0;->c:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lu8/h0;Lu8/v0;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lu8/e0;-><init>(Lu8/h0;Lu8/v0;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic a()[Lee/b;
    .locals 1

    .line 1
    sget-object v0, Lu8/e0;->d:[Lee/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic c(Lu8/e0;Lu8/h0;Lu8/v0;Ljava/util/Map;ILjava/lang/Object;)Lu8/e0;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lu8/e0;->a:Lu8/h0;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lu8/e0;->b:Lu8/v0;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lu8/e0;->c:Ljava/util/Map;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lu8/e0;->b(Lu8/h0;Lu8/v0;Ljava/util/Map;)Lu8/e0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lu8/e0;Lhe/d;Lge/d;)V
    .locals 5

    .line 1
    sget-object v0, Lu8/e0;->d:[Lee/b;

    .line 2
    .line 3
    sget-object v1, Lu8/h0$a;->a:Lu8/h0$a;

    .line 4
    .line 5
    iget-object v2, p0, Lu8/e0;->a:Lu8/h0;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-interface {p1, p2, v3, v1, v2}, Lhe/d;->c(Lge/d;ILee/e;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-interface {p1, p2, v1}, Lhe/d;->m(Lge/d;I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    :goto_0
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v2, p0, Lu8/e0;->b:Lu8/v0;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v2, v3

    .line 26
    :goto_1
    if-eqz v2, :cond_2

    .line 27
    .line 28
    sget-object v2, Lu8/v0$a;->a:Lu8/v0$a;

    .line 29
    .line 30
    iget-object v4, p0, Lu8/e0;->b:Lu8/v0;

    .line 31
    .line 32
    invoke-interface {p1, p2, v1, v2, v4}, Lhe/d;->f(Lge/d;ILee/e;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    const/4 v2, 0x2

    .line 36
    invoke-interface {p1, p2, v2}, Lhe/d;->m(Lge/d;I)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    :goto_2
    move v3, v1

    .line 43
    goto :goto_3

    .line 44
    :cond_3
    iget-object v4, p0, Lu8/e0;->c:Ljava/util/Map;

    .line 45
    .line 46
    if-eqz v4, :cond_4

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 50
    .line 51
    aget-object v0, v0, v2

    .line 52
    .line 53
    iget-object p0, p0, Lu8/e0;->c:Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {p1, p2, v2, v0, p0}, Lhe/d;->f(Lge/d;ILee/e;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_5
    return-void
.end method


# virtual methods
.method public final b(Lu8/h0;Lu8/v0;Ljava/util/Map;)Lu8/e0;
    .locals 1

    .line 1
    const-string v0, "sessionDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lu8/e0;

    invoke-direct {v0, p1, p2, p3}, Lu8/e0;-><init>(Lu8/h0;Lu8/v0;Ljava/util/Map;)V

    return-object v0
.end method

.method public final d()Lu8/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/e0;->b:Lu8/v0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/e0;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu8/e0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lu8/e0;

    iget-object v1, p0, Lu8/e0;->a:Lu8/h0;

    iget-object v3, p1, Lu8/e0;->a:Lu8/h0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lu8/e0;->b:Lu8/v0;

    iget-object v3, p1, Lu8/e0;->b:Lu8/v0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lu8/e0;->c:Ljava/util/Map;

    iget-object p1, p1, Lu8/e0;->c:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f()Lu8/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/e0;->a:Lu8/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lu8/e0;->a:Lu8/h0;

    invoke-virtual {v0}, Lu8/h0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lu8/e0;->b:Lu8/v0;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lu8/v0;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lu8/e0;->c:Ljava/util/Map;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionData(sessionDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu8/e0;->a:Lu8/h0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu8/e0;->b:Lu8/v0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processDataMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu8/e0;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
