.class public final Lx8/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx8/h$a;,
        Lx8/h$b;
    }
.end annotation


# static fields
.field public static final Companion:Lx8/h$b;


# instance fields
.field private final a:Ljava/lang/Boolean;

.field private final b:Ljava/lang/Double;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/Integer;

.field private final e:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx8/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx8/h$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lx8/h;->Companion:Lx8/h$b;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Lie/y;)V
    .locals 1

    and-int/lit8 p7, p1, 0x1f

    const/16 v0, 0x1f

    if-eq v0, p7, :cond_0

    .line 1
    sget-object p7, Lx8/h$a;->a:Lx8/h$a;

    invoke-virtual {p7}, Lx8/h$a;->a()Lge/d;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lie/o;->a(IILge/d;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx8/h;->a:Ljava/lang/Boolean;

    iput-object p3, p0, Lx8/h;->b:Ljava/lang/Double;

    iput-object p4, p0, Lx8/h;->c:Ljava/lang/Integer;

    iput-object p5, p0, Lx8/h;->d:Ljava/lang/Integer;

    iput-object p6, p0, Lx8/h;->e:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lx8/h;->a:Ljava/lang/Boolean;

    .line 4
    iput-object p2, p0, Lx8/h;->b:Ljava/lang/Double;

    .line 5
    iput-object p3, p0, Lx8/h;->c:Ljava/lang/Integer;

    .line 6
    iput-object p4, p0, Lx8/h;->d:Ljava/lang/Integer;

    .line 7
    iput-object p5, p0, Lx8/h;->e:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic f(Lx8/h;Lhe/d;Lge/d;)V
    .locals 3

    .line 1
    sget-object v0, Lie/b;->a:Lie/b;

    .line 2
    .line 3
    iget-object v1, p0, Lx8/h;->a:Ljava/lang/Boolean;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {p1, p2, v2, v0, v1}, Lhe/d;->f(Lge/d;ILee/e;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lie/d;->a:Lie/d;

    .line 10
    .line 11
    iget-object v1, p0, Lx8/h;->b:Ljava/lang/Double;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-interface {p1, p2, v2, v0, v1}, Lhe/d;->f(Lge/d;ILee/e;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lie/g;->a:Lie/g;

    .line 18
    .line 19
    iget-object v1, p0, Lx8/h;->c:Ljava/lang/Integer;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-interface {p1, p2, v2, v0, v1}, Lhe/d;->f(Lge/d;ILee/e;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    iget-object v2, p0, Lx8/h;->d:Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-interface {p1, p2, v1, v0, v2}, Lhe/d;->f(Lge/d;ILee/e;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lie/j;->a:Lie/j;

    .line 32
    .line 33
    iget-object p0, p0, Lx8/h;->e:Ljava/lang/Long;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-interface {p1, p2, v1, v0, p0}, Lhe/d;->f(Lge/d;ILee/e;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/h;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/h;->e:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/h;->b:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/h;->c:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/h;->a:Ljava/lang/Boolean;

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
    instance-of v1, p1, Lx8/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lx8/h;

    iget-object v1, p0, Lx8/h;->a:Ljava/lang/Boolean;

    iget-object v3, p1, Lx8/h;->a:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lx8/h;->b:Ljava/lang/Double;

    iget-object v3, p1, Lx8/h;->b:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lx8/h;->c:Ljava/lang/Integer;

    iget-object v3, p1, Lx8/h;->c:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lx8/h;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lx8/h;->d:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lx8/h;->e:Ljava/lang/Long;

    iget-object p1, p1, Lx8/h;->e:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lx8/h;->a:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lx8/h;->b:Ljava/lang/Double;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lx8/h;->c:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lx8/h;->d:Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lx8/h;->e:Ljava/lang/Long;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionConfigs(sessionsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx8/h;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionSamplingRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx8/h;->b:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionTimeoutSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx8/h;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheDurationSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx8/h;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheUpdatedTimeSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx8/h;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
