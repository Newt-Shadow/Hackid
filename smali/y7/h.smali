.class public Ly7/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lq7/i0;


# direct methods
.method constructor <init>(Lq7/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly7/h;->a:Lq7/i0;

    .line 5
    .line 6
    return-void
.end method

.method private static a(I)Ly7/i;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Could not determine SettingsJsonTransform for settings version "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, ". Using default settings values."

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ln7/g;->d(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Ly7/b;

    .line 34
    .line 35
    invoke-direct {p0}, Ly7/b;-><init>()V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    new-instance p0, Ly7/m;

    .line 40
    .line 41
    invoke-direct {p0}, Ly7/m;-><init>()V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method


# virtual methods
.method public b(Lorg/json/JSONObject;)Ly7/d;
    .locals 2

    .line 1
    const-string v0, "settings_version"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ly7/h;->a(I)Ly7/i;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Ly7/h;->a:Lq7/i0;

    .line 12
    .line 13
    invoke-interface {v0, v1, p1}, Ly7/i;->a(Lq7/i0;Lorg/json/JSONObject;)Ly7/d;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
