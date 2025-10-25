.class public final Lu8/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu8/y0;


# static fields
.field public static final a:Lu8/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu8/z0;

    invoke-direct {v0}, Lu8/z0;-><init>()V

    sput-object v0, Lu8/z0;->a:Lu8/z0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()Ljava/util/UUID;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "randomUUID(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
