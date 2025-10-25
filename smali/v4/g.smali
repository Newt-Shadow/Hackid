.class public final synthetic Lv4/g;
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
    check-cast p1, Lv4/f$b;

    check-cast p2, Lv4/f$b;

    invoke-static {p1, p2}, Lv4/f$b;->a(Lv4/f$b;Lv4/f$b;)I

    move-result p1

    return p1
.end method
