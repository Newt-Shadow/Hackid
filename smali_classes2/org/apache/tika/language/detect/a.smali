.class public final synthetic Lorg/apache/tika/language/detect/a;
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
    check-cast p1, Lorg/apache/tika/language/detect/LanguageDetector;

    check-cast p2, Lorg/apache/tika/language/detect/LanguageDetector;

    invoke-static {p1, p2}, Lorg/apache/tika/utils/CompareUtils;->compareClassName(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
