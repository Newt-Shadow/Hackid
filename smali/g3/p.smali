.class public interface abstract Lg3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg3/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg3/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lg3/o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lg3/p;->a:Lg3/p;

    .line 7
    .line 8
    return-void
.end method

.method private static synthetic a()[Lg3/k;
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Lg3/k;

    return-object v0
.end method

.method public static synthetic d()[Lg3/k;
    .locals 1

    .line 1
    invoke-static {}, Lg3/p;->a()[Lg3/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()[Lg3/k;
.end method

.method public c(Landroid/net/Uri;Ljava/util/Map;)[Lg3/k;
    .locals 0

    .line 1
    invoke-interface {p0}, Lg3/p;->b()[Lg3/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
