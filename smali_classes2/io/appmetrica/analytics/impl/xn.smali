.class public final Lio/appmetrica/analytics/impl/xn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ln;

.field public final b:Lio/appmetrica/analytics/impl/Q;

.field public final c:Lio/appmetrica/analytics/impl/v6;

.field public final d:Lio/appmetrica/analytics/impl/ml;

.field public final e:Lio/appmetrica/analytics/impl/Fe;

.field public final f:Lio/appmetrica/analytics/impl/Ge;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    new-instance v1, Lio/appmetrica/analytics/impl/ln;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/ln;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/Q;

    new-instance v0, Lio/appmetrica/analytics/impl/dn;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/dn;-><init>()V

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/Q;-><init>(Lio/appmetrica/analytics/impl/dn;)V

    new-instance v3, Lio/appmetrica/analytics/impl/v6;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/v6;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/impl/ml;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/ml;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/impl/Fe;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/Fe;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/impl/Ge;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/Ge;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/xn;-><init>(Lio/appmetrica/analytics/impl/ln;Lio/appmetrica/analytics/impl/Q;Lio/appmetrica/analytics/impl/v6;Lio/appmetrica/analytics/impl/ml;Lio/appmetrica/analytics/impl/Fe;Lio/appmetrica/analytics/impl/Ge;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/ln;Lio/appmetrica/analytics/impl/Q;Lio/appmetrica/analytics/impl/v6;Lio/appmetrica/analytics/impl/ml;Lio/appmetrica/analytics/impl/Fe;Lio/appmetrica/analytics/impl/Ge;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/xn;->b:Lio/appmetrica/analytics/impl/Q;

    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/xn;->a:Lio/appmetrica/analytics/impl/ln;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/xn;->c:Lio/appmetrica/analytics/impl/v6;

    .line 6
    iput-object p4, p0, Lio/appmetrica/analytics/impl/xn;->d:Lio/appmetrica/analytics/impl/ml;

    .line 7
    iput-object p5, p0, Lio/appmetrica/analytics/impl/xn;->e:Lio/appmetrica/analytics/impl/Fe;

    .line 8
    iput-object p6, p0, Lio/appmetrica/analytics/impl/xn;->f:Lio/appmetrica/analytics/impl/Ge;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/wn;)Lio/appmetrica/analytics/impl/k6;
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/k6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/k6;-><init>()V

    .line 2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/wn;->a:Lio/appmetrica/analytics/impl/mn;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lio/appmetrica/analytics/impl/xn;->a:Lio/appmetrica/analytics/impl/ln;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/ln;->a(Lio/appmetrica/analytics/impl/mn;)Lio/appmetrica/analytics/impl/q6;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/k6;->a:Lio/appmetrica/analytics/impl/q6;

    .line 4
    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/wn;->b:Lio/appmetrica/analytics/impl/P;

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/impl/xn;->b:Lio/appmetrica/analytics/impl/Q;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/Q;->a(Lio/appmetrica/analytics/impl/P;)Lio/appmetrica/analytics/impl/g6;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/k6;->b:Lio/appmetrica/analytics/impl/g6;

    .line 6
    :cond_1
    iget-object v1, p1, Lio/appmetrica/analytics/impl/wn;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, p0, Lio/appmetrica/analytics/impl/xn;->d:Lio/appmetrica/analytics/impl/ml;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/ml;->a(Ljava/util/List;)[Lio/appmetrica/analytics/impl/o6;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/k6;->e:[Lio/appmetrica/analytics/impl/o6;

    .line 8
    :cond_2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/wn;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 9
    iput-object v1, v0, Lio/appmetrica/analytics/impl/k6;->c:Ljava/lang/String;

    .line 10
    :cond_3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/xn;->c:Lio/appmetrica/analytics/impl/v6;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/wn;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/le;->a(Ljava/lang/Boolean;)I

    move-result v1

    iput v1, v0, Lio/appmetrica/analytics/impl/k6;->d:I

    .line 11
    iget-object v1, p1, Lio/appmetrica/analytics/impl/wn;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 12
    iget-object v1, p0, Lio/appmetrica/analytics/impl/xn;->e:Lio/appmetrica/analytics/impl/Fe;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/wn;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Fe;->a(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/k6;->h:[B

    .line 13
    :cond_4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/wn;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 14
    iget-object v1, p1, Lio/appmetrica/analytics/impl/wn;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/k6;->i:[B

    .line 15
    :cond_5
    iget-object v1, p1, Lio/appmetrica/analytics/impl/wn;->f:Ljava/util/Map;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/impl/xn;->f:Lio/appmetrica/analytics/impl/Ge;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/wn;->f:Ljava/util/Map;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Ge;->a(Ljava/util/Map;)[Lio/appmetrica/analytics/impl/i6;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/k6;->j:[Lio/appmetrica/analytics/impl/i6;

    :cond_6
    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/k6;)Lio/appmetrica/analytics/impl/wn;
    .locals 0

    .line 17
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/wn;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xn;->a(Lio/appmetrica/analytics/impl/wn;)Lio/appmetrica/analytics/impl/k6;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/k6;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
