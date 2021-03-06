from django.contrib import admin

from .models import *
# Register your models here.

class EventAdmin(admin.ModelAdmin):
    list_display = ('name', 'status', 'numberComands', 'timeNow')
    list_display_links = ('name',)
    search_fields = ('name',)
    filter_horizontal = ['sponsors', 'organizers', 'participants']
    list_filter = ('status', 'timeNow')
    save_on_top = True

class OrganizersAdmin(admin.ModelAdmin):
    list_display = ('name',)
    list_display_links = ('name',)
    search_fields = ('name',)

class SponsorsAdmin(admin.ModelAdmin):
    list_display = ('name',)
    list_display_links = ('name',)
    search_fields = ('name',)

class ParticipantAdmin(admin.ModelAdmin):
    list_display = ('name',)
    list_display_links = ('name',)
    search_fields = ('name', 'id')

class TeamAdmin(admin.ModelAdmin):
    list_display = ('name', 'approvement',)
    list_display_links = ('name',)
    search_fields = ('name', 'id',)
    list_filter = ('approvement',)
    list_editable = ('approvement',)

admin.site.register(Event, EventAdmin)
admin.site.register(Organizers, OrganizersAdmin)
admin.site.register(Sponsors, SponsorsAdmin)
admin.site.register(Participant, ParticipantAdmin)
admin.site.register(Team, TeamAdmin)
