.class public final Lve/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lve/c$a;
    }
.end annotation


# static fields
.field public static final d:Lve/c$a;

.field public static final e:Laf/g;

.field public static final f:Laf/g;

.field public static final g:Laf/g;

.field public static final h:Laf/g;

.field public static final i:Laf/g;

.field public static final j:Laf/g;


# instance fields
.field public final a:Laf/g;

.field public final b:Laf/g;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lve/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lve/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lve/c;->d:Lve/c$a;

    .line 8
    .line 9
    sget-object v0, Laf/g;->d:Laf/g$a;

    .line 10
    .line 11
    const-string v1, ":"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Laf/g$a;->c(Ljava/lang/String;)Laf/g;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lve/c;->e:Laf/g;

    .line 18
    .line 19
    const-string v1, ":status"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Laf/g$a;->c(Ljava/lang/String;)Laf/g;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Lve/c;->f:Laf/g;

    .line 26
    .line 27
    const-string v1, ":method"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Laf/g$a;->c(Ljava/lang/String;)Laf/g;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lve/c;->g:Laf/g;

    .line 34
    .line 35
    const-string v1, ":path"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Laf/g$a;->c(Ljava/lang/String;)Laf/g;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sput-object v1, Lve/c;->h:Laf/g;

    .line 42
    .line 43
    const-string v1, ":scheme"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Laf/g$a;->c(Ljava/lang/String;)Laf/g;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sput-object v1, Lve/c;->i:Laf/g;

    .line 50
    .line 51
    const-string v1, ":authority"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Laf/g$a;->c(Ljava/lang/String;)Laf/g;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lve/c;->j:Laf/g;

    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>(Laf/g;Laf/g;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lve/c;->a:Laf/g;

    .line 3
    iput-object p2, p0, Lve/c;->b:Laf/g;

    .line 4
    invoke-virtual {p1}, Laf/g;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Laf/g;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lve/c;->c:I

    return-void
.end method

.method public constructor <init>(Laf/g;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Laf/g;->d:Laf/g$a;

    invoke-virtual {v0, p2}, Laf/g$a;->c(Ljava/lang/String;)Laf/g;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lve/c;-><init>(Laf/g;Laf/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Laf/g;->d:Laf/g$a;

    invoke-virtual {v0, p1}, Laf/g$a;->c(Ljava/lang/String;)Laf/g;

    move-result-object p1

    invoke-virtual {v0, p2}, Laf/g$a;->c(Ljava/lang/String;)Laf/g;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lve/c;-><init>(Laf/g;Laf/g;)V

    return-void
.end method


# virtual methods
.method public final a()Laf/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/c;->a:Laf/g;

    return-object v0
.end method

.method public final b()Laf/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/c;->b:Laf/g;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lve/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lve/c;

    iget-object v1, p0, Lve/c;->a:Laf/g;

    iget-object v3, p1, Lve/c;->a:Laf/g;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lve/c;->b:Laf/g;

    iget-object p1, p1, Lve/c;->b:Laf/g;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lve/c;->a:Laf/g;

    invoke-virtual {v0}, Laf/g;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lve/c;->b:Laf/g;

    invoke-virtual {v1}, Laf/g;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lve/c;->a:Laf/g;

    .line 7
    .line 8
    invoke-virtual {v1}, Laf/g;->H()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ": "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lve/c;->b:Laf/g;

    .line 21
    .line 22
    invoke-virtual {v1}, Laf/g;->H()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
