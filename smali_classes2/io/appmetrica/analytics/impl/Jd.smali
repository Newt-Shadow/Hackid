.class public final Lio/appmetrica/analytics/impl/Jd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# static fields
.field public static final a:Lio/appmetrica/analytics/impl/Id;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Id;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Id;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/appmetrica/analytics/impl/Jd;->a:Lio/appmetrica/analytics/impl/Id;

    .line 7
    .line 8
    sget-object v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->UNKNOWN:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->CRASHPAD:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    filled-new-array {v0, v1}, [Lxc/k;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lio/appmetrica/analytics/impl/Jd;->b:Ljava/util/Map;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/k6;)Lio/appmetrica/analytics/impl/Md;
    .locals 0

    .line 16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Md;)Lio/appmetrica/analytics/impl/k6;
    .locals 5

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/k6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/k6;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lio/appmetrica/analytics/impl/k6;->f:I

    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/j6;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/j6;-><init>()V

    .line 4
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Md;->a:[B

    .line 5
    iput-object v2, v1, Lio/appmetrica/analytics/impl/j6;->a:[B

    .line 6
    new-instance v2, Lio/appmetrica/analytics/impl/n6;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/n6;-><init>()V

    .line 7
    sget-object v3, Lio/appmetrica/analytics/impl/Jd;->b:Ljava/util/Map;

    .line 8
    iget-object v4, p1, Lio/appmetrica/analytics/impl/Md;->b:Lio/appmetrica/analytics/impl/Ld;

    .line 9
    iget-object v4, v4, Lio/appmetrica/analytics/impl/Ld;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    .line 10
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iput v3, v2, Lio/appmetrica/analytics/impl/n6;->a:I

    .line 11
    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Md;->b:Lio/appmetrica/analytics/impl/Ld;

    .line 12
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ld;->b:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, ""

    .line 13
    :cond_1
    iput-object p1, v2, Lio/appmetrica/analytics/impl/n6;->b:Ljava/lang/String;

    .line 14
    iput-object v2, v1, Lio/appmetrica/analytics/impl/j6;->b:Lio/appmetrica/analytics/impl/n6;

    .line 15
    iput-object v1, v0, Lio/appmetrica/analytics/impl/k6;->g:Lio/appmetrica/analytics/impl/j6;

    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/Md;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Jd;->a(Lio/appmetrica/analytics/impl/Md;)Lio/appmetrica/analytics/impl/k6;

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
