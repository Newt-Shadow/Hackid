.class public final Lxe/n;
.super Lxe/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxe/n$a;
    }
.end annotation


# static fields
.field public static final j:Lxe/n$a;


# instance fields
.field private final h:Ljava/lang/Class;

.field private final i:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lxe/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxe/n$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lxe/n;->j:Lxe/n$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    .line 1
    const-string v0, "sslSocketClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sslSocketFactoryClass"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "paramClass"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lxe/h;-><init>(Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lxe/n;->h:Ljava/lang/Class;

    .line 20
    .line 21
    iput-object p3, p0, Lxe/n;->i:Ljava/lang/Class;

    .line 22
    .line 23
    return-void
.end method
