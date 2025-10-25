.class abstract Lorg/apache/tika/pipes/PipesReporterBase$StatusFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/pipes/PipesReporterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StatusFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tika/pipes/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesReporterBase$StatusFilter;-><init>()V

    return-void
.end method


# virtual methods
.method abstract accept(Lorg/apache/tika/pipes/PipesResult$STATUS;)Z
.end method
