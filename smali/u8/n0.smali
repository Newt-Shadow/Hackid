.class public final Lu8/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lu8/w0;

.field private final b:Lu8/y0;


# direct methods
.method public constructor <init>(Lu8/w0;Lu8/y0;)V
    .locals 1

    .line 1
    const-string v0, "timeProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "uuidGenerator"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lu8/n0;->a:Lu8/w0;

    .line 15
    .line 16
    iput-object p2, p0, Lu8/n0;->b:Lu8/y0;

    .line 17
    .line 18
    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lu8/n0;->b:Lu8/y0;

    .line 2
    .line 3
    invoke-interface {v0}, Lu8/y0;->next()Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v0, "toString(...)"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "-"

    .line 17
    .line 18
    const-string v3, ""

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lrd/n;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "toLowerCase(...)"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method


# virtual methods
.method public final a(Lu8/h0;)Lu8/h0;
    .locals 7

    .line 1
    invoke-direct {p0}, Lu8/n0;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    new-instance v6, Lu8/h0;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lu8/h0;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v2, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move-object v2, v1

    .line 19
    :goto_1
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lu8/h0;->c()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    const/4 p1, 0x0

    .line 29
    :goto_2
    move v3, p1

    .line 30
    iget-object p1, p0, Lu8/n0;->a:Lu8/w0;

    .line 31
    .line 32
    invoke-interface {p1}, Lu8/w0;->a()Lu8/v0;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lu8/v0;->b()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    move-object v0, v6

    .line 41
    invoke-direct/range {v0 .. v5}, Lu8/h0;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 42
    .line 43
    .line 44
    return-object v6
.end method
