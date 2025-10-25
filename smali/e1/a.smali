.class public abstract Le1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/a$a;,
        Le1/a$b;
    }
.end annotation


# static fields
.field public static final a:Le1/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le1/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le1/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Le1/a;->a:Le1/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Le1/a;
    .locals 1

    .line 1
    sget-object v0, Le1/a;->a:Le1/a$b;

    invoke-virtual {v0, p0}, Le1/a$b;->a(Landroid/content/Context;)Le1/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b()Lr6/d;
.end method

.method public abstract c(Landroid/net/Uri;)Lr6/d;
.end method
