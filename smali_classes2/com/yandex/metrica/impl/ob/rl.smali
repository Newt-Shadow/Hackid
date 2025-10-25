.class public Lcom/yandex/metrica/impl/ob/rl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/rl$b;,
        Lcom/yandex/metrica/impl/ob/rl$c;,
        Lcom/yandex/metrica/impl/ob/rl$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/yandex/metrica/impl/ob/rl$b;

.field public final d:I

.field public final e:Z

.field public final f:Lcom/yandex/metrica/impl/ob/rl$c;

.field public final g:Lcom/yandex/metrica/impl/ob/rl$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/rl$b;IZLcom/yandex/metrica/impl/ob/rl$c;Lcom/yandex/metrica/impl/ob/rl$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/rl;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/rl;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/rl;->c:Lcom/yandex/metrica/impl/ob/rl$b;

    .line 9
    .line 10
    iput p4, p0, Lcom/yandex/metrica/impl/ob/rl;->d:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/yandex/metrica/impl/ob/rl;->e:Z

    .line 13
    .line 14
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/rl;->f:Lcom/yandex/metrica/impl/ob/rl$c;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/rl;->g:Lcom/yandex/metrica/impl/ob/rl$a;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/Ak;)Lcom/yandex/metrica/impl/ob/rl$b;
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/rl;->c:Lcom/yandex/metrica/impl/ob/rl$b;

    return-object p1
.end method

.method a(Lcom/yandex/metrica/impl/ob/hl;)Lorg/json/JSONArray;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/hl;Lcom/yandex/metrica/impl/ob/rl$b;)Lorg/json/JSONObject;
    .locals 3

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "t"

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/rl;->f:Lcom/yandex/metrica/impl/ob/rl$c;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/rl$c;->a(Lcom/yandex/metrica/impl/ob/rl$c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    const-string v1, "cnt"

    .line 6
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/rl;->a(Lcom/yandex/metrica/impl/ob/hl;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_0
    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/hl;->e:Z

    if-eqz p1, :cond_3

    .line 8
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "ct"

    :try_start_2
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/rl;->g:Lcom/yandex/metrica/impl/ob/rl$a;

    .line 9
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/rl$a;->a(Lcom/yandex/metrica/impl/ob/rl$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "cn"

    :try_start_3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/rl;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v1, "rid"

    :try_start_4
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/rl;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v1, "d"

    :try_start_5
    iget v2, p0, Lcom/yandex/metrica/impl/ob/rl;->d:I

    .line 12
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v1, "lc"

    :try_start_6
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/rl;->e:Z

    .line 13
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v1, "if"

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 14
    :goto_0
    :try_start_7
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz p2, :cond_2

    const-string v1, "fr"

    .line 15
    :try_start_8
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/rl$b;->a(Lcom/yandex/metrica/impl/ob/rl$b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p2, "i"

    .line 16
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    :cond_3
    return-object v0
.end method

.method a()Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "UiElement{mClassName=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/rl;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", mId=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/rl;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", mParseFilterReason="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/rl;->c:Lcom/yandex/metrica/impl/ob/rl$b;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", mDepth="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/yandex/metrica/impl/ob/rl;->d:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", mListItem="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/rl;->e:Z

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", mViewType="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/rl;->f:Lcom/yandex/metrica/impl/ob/rl$c;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", mClassType="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/rl;->g:Lcom/yandex/metrica/impl/ob/rl$a;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x7d

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0
.end method
