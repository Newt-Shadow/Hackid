.class public final synthetic Lorg/apache/tika/utils/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/apache/tika/utils/CompareUtils;->compareClassName(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
