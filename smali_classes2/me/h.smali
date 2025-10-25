.class public final Lme/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lme/h;

.field private static b:Landroid/app/Activity;

.field private static c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lme/h;

    invoke-direct {v0}, Lme/h;-><init>()V

    sput-object v0, Lme/h;->a:Lme/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .line 1
    sget-object v0, Lme/h;->b:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
    .locals 1

    .line 1
    sget-object v0, Lme/h;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 0

    .line 1
    sput-object p1, Lme/h;->b:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method

.method public final d(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 1
    sput-object p1, Lme/h;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    .line 3
    return-void
.end method
