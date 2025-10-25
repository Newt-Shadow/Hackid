.class public final synthetic Lk5/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/k;


# static fields
.field public static final synthetic a:Lk5/f0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk5/f0;

    invoke-direct {v0}, Lk5/f0;-><init>()V

    sput-object v0, Lk5/f0;->a:Lk5/f0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lm6/Task;
    .locals 0

    .line 1
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lk5/c;->e(Landroid/os/Bundle;)Lm6/Task;

    move-result-object p1

    return-object p1
.end method
