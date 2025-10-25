.class public final Llb/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llb/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Llb/m$a;

.field private static final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Llb/m$a;

    .line 2
    .line 3
    invoke-direct {v0}, Llb/m$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Llb/m$a;->a:Llb/m$a;

    .line 7
    .line 8
    const-string v1, "groups"

    .line 9
    .line 10
    const-string v2, "anonymousId"

    .line 11
    .line 12
    const-string v3, "distinctId"

    .line 13
    .line 14
    const-string v4, "isIdentified"

    .line 15
    .line 16
    const-string v5, "personProcessingEnabled"

    .line 17
    .line 18
    const-string v6, "opt-out"

    .line 19
    .line 20
    const-string v7, "featureFlags"

    .line 21
    .line 22
    const-string v8, "featureFlagsPayload"

    .line 23
    .line 24
    const-string v9, "sessionReplay"

    .line 25
    .line 26
    const-string v10, "surveys"

    .line 27
    .line 28
    const-string v11, "surveySeen"

    .line 29
    .line 30
    const-string v12, "version"

    .line 31
    .line 32
    const-string v13, "build"

    .line 33
    .line 34
    const-string v14, "stringifiedKeys"

    .line 35
    .line 36
    const-string v15, "feature_flag_request_id"

    .line 37
    .line 38
    const-string v16, "flags"

    .line 39
    .line 40
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lyc/k0;->d([Ljava/lang/Object;)Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Llb/m$a;->b:Ljava/util/Set;

    .line 49
    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Llb/m$a;->b:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method
