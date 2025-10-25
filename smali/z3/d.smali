.class public final synthetic Lz3/d;
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
    check-cast p1, Lz3/c$b;

    check-cast p2, Lz3/c$b;

    invoke-static {p1, p2}, Lz3/c$b;->a(Lz3/c$b;Lz3/c$b;)I

    move-result p1

    return p1
.end method
